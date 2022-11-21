import ImagenesSVG
filaRec :: Integer -> Integer -> Imagen -> Imagen 
filaRec x y z 
            | y >= 2 = filaRec  x (y-2) (encima z (encima (aj 0 x ) (aj (x+1) (x*2+1))))
            | y == 0 = z
            | y == 1  = encima z (aj 0 x)

filas :: Integer -> Integer -> Imagen
filas x y 
        | y >= 2 = filaRec  x (y-2) (encima (aj 0 x ) (aj (x+1) (x*2+1)))
        | otherwise  = aj 0 x  
ajRec :: Integer ->  Integer ->  Imagen -> Imagen 
ajRec x max z 
            | x == max = z
            | even x =  ajRec (x+1) max (junto_a z blanco) 
            | otherwise = ajRec (x+1) max (junto_a z negro)
aj :: Integer ->  Integer -> Imagen 
aj x y   
      | even x =  ajRec (x+1) y blanco
      | otherwise = ajRec (x+1) y negro
ajedrez ::  Integer ->  Integer -> Imagen 
ajedrez =  filas  


