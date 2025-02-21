User Story:
Som en användare vill jag kunna registrera ett unikt användarnamn på hemsidan. Så att ingen annan kan komma in på min sida.
Som en användare vill jag att mitt lösenord skall vara säkert. Så att det ska vara svårare att gissa lösenordet. 

Funktion:
Användare kan registrera ett unikt användarnamn på hemsidan.

Acceptanskriterier:
En användare kan inte registrera ett användarnamn som redan finns.
Lösenordet man försöker registrera måste innehålla minst 8 karaktärer.

Testfall - Unique Username: Kollar att det inte går att registrera samma användarnamn.
Testfall - Password Length Failure: Kollar att lösenordet man försöker registrera inte kan innehålla mindre än 8 karaktärer.



User Story:
Som ett system vill jag kunna skilja på användare som har köpt VIP-biljetter och de som inte har det. Genom att användaren har köpt VIP-biljetter så kan de boka safariturer på helger samt kunna boka VIP-exklusiva turer. Så att det ska gynna användaren att köpa VIP-biljetter.

Funktion:
Användare kan boka Safariturer på vardagar, användare som har köpt VIP-biljetter.
kan även boka safariturer på helger samt 2 VIP-exklusiva turer.

Acceptanskriterier:
En användare utan VIP-biljett kan inte boka safariturer på helger.
En användare utan VIP-biljett kan inte boka de exklusiva turerna.

Testfall - Non VIP User Cannot Book Weekend Safari: Kollar att en användare utan VIP-biljett inte kan boka safariturer på helger.
Testfall - Non VIP User Cannot Book Exclusive Tours: Kollar att en användare utan VIP-biljett inte kan boka exklusiva turer.
