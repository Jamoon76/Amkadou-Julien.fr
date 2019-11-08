import processing.pdf.*;



//Déclaration d'une variable contenant le nombre de balles
int nbreBalle = 10000;

//Déclaration d'une liste d'instances de l'objet Balle
Balle[] balles = new Balle[nbreBalle];

 




void setup() {

 //Lissage des dessins
  fullScreen(); //Taille de la fenêtre  
  noStroke();
  smooth();
  
  //Cette boucle va créer trois balles blanches
  //au centre de l'écran
  for (int i = 0; i < nbreBalle; i++) {
    balles[i] = new Balle(width/2, height/2, color(255));
    
  }

}
void draw() {
 
    fill(6,6,6,6); // Couleur avec transparence.
  rect(0,0 , width, height);



  //Cette boucle va déplacer et afficher les trois balles
  for (int i = 0; i < nbreBalle; i++) {
    balles[i].bouge();
    balles[i].testCollision();
    balles[i].display();
  }
  }


class Balle {
  //Déclaration des paramètres de base de la balle
  float x;
  float y;
  float z;
  float vitesseX;
  float vitesseY; 
  color couleur;

  //Constructeur de la balle
  Balle (float nouvX, float nouvY, color nouvCouleur) {
    x      = nouvX;
    y      = nouvY;

    couleur    =  nouvCouleur;

    
 
    vitesseX = 2 +  random(-4.1);
    vitesseY = 2 + random(-4.1);
  }

  //Dessin de la balle
  void display() {
fill(couleur);

 ellipse(x, y, 1, 1);
 
  }

  //Déplacement de la balle
  void bouge() {
    x = x + + vitesseX;
    y = y + + vitesseY;
  
  }

  void testCollision() {
    //Si la balle touche un mur, elle rebondit
    if (x > width-1|| x < 5) {
       vitesseX = vitesseX * -1;
        
        }
    
    if (y > height-5 || y < 5) {
       vitesseY = vitesseY * -1;
     
    }
   
  } 
}