import meggy.Meggy;

class PA2SetPixelOutOfBoundsError {
       public static void main(String[] whatever){
               Meggy.setPixel( 9, (byte)2, Meggy.Color.BLUE );
        }
}
