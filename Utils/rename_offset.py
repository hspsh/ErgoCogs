


import sys, math

# This script is capable of:
# Parsing ".rpt" from kicad
# * renaming components into different components
# ofsetting component location by a fixed value, with regard to an element rotation

filename = sys.argv[1]

f = open(filename, "r")

content = f.read()

offsetX = 0
offsetY = 7.62

diode_package = "SOD-123"

def rotate(origin, point, angle):
    """
    Rotate a point counterclockwise by a given angle around a given origin.

    The angle should be given in radians.
    """
    ox, oy = origin
    px, py = point

    qx = ox + math.cos(angle) * (px - ox) - math.sin(angle) * (py - oy)
    qy = oy + math.sin(angle) * (px - ox) + math.cos(angle) * (py - oy)
    return qx, qy

cpl_out = ""
diode_no = 1
diode_list_txt = ""

for module in content.split("\n\n"):
    if "SW" in module or "SX" in module:
        lines = module.split("\n")
        rpt_name = lines[0]
        positions = lines[5]


        print(rpt_name)
        print(positions)
        posX = float(positions.split(" ")[1])
        posY = float(positions.split(" ")[2])
        rot = float(positions.split(" ")[5])
        print(f'X|Y|R: {posX}|{posY}|{rot}')

        (dx,dy) = rotate((0,0),(offsetX, offsetY),math.radians(-rot))
        print(f'dx|dy: {dx}|{dy}\n')      
        
        finalX = format(round(posX + dx,3),'.6f')
        finalY = format(round(posY + dy,3)*(-1),'.6f')
        finalRot = format(rot,'.6f')
        
        cpl_line = f'"DS{diode_no}","generic diode","{diode_package}",{finalX},{finalY},{finalRot},top'
        cpl_out+= cpl_line + "\n"

        diode_list_txt +=f'DS{diode_no},'
        
        diode_no+=1#ur mom is unpythonic lmao

bom_out = f'SW_DIODE,"{diode_list_txt}",{diode_package}'

print("append this line to JLC bom")
print(bom_out)

print("append this to CPL file:")
print(cpl_out)




