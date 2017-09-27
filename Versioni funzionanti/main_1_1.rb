

######
# Implementa le seguenti funzioni come richiesto nel commento che le precede
######

# Restituisce una stringa che dice "Benvenuto"
def welcome_message
   return "Benvenuto"
end
#puts welcome_message

# Restituisce n! (fattoriale)
def factorial(n)
  #studio prima i casi particolari
  if(n<0)
    return "Errore"
  elsif(n==0 || n==1)
    return 1
  #poi sviluppo un algoritmo ricorsivo
  else
    return n*factorial(n-1)
  end
end
#puts factorial(10)

# Restituisce la stringa più lunga in un array di stringhe
def find_longest_string(array)
  #contatore per lunghezza stringa e position per memorizzare posizione stringa in array
  count=0
  position=0
  #ciclo che valuta ogni stringa
  array.each{
    |string| 
    #se lunghezza stringa è maggiore di count, aggiorno count e memorizzo posizione stringa
    if string.length > count
      count=string.length
      position=array.index(string)
    end
  }
  #ritorno la stringa più lunga
  return array[position]
end
#prova=["ciao","bella","bellissima"]
#puts find_longest_string(prova)


# Restituisce true se l'array contiene altri array (es. [[1],2,3] => true)
def has_nested_array?(array)
  #stringhe le intende come array o no?
  #ciclo che ritorna true se elemento valutato è stringa (array di caratteri)
  #e ritorna true se è presente un sotto array
  array.each{
    |x|
    #??? stringa di un solo carattere è array? casomai aggiungere if (x.is_a? String && x.length>1)
    return true if x.is_a? String
    return true if x.is_a?(Array)
  }
  return false
end
#prova=[2,2,3,"ciao"]
#puts has_nested_array?(prova)


# Conta il numero di caratteri maiuscoli in una stringa
def count_upcased_letters(string)
  #se string non è una stringa ritorno errore
  return "Error" unless string.is_a? String 
  #divido prima la stringa passata in un array di caratteri
  chars=string.split("")
  #setto a 0 un contatore e poi eseguo il ciclo
  #se il carattere analizzato è maiuscolo incremento count
  count=0
  chars.each{|c| count+=1 if c<='Z' && c>='A'}
  return count
end
#puts count_upcased_letters("CIAO")

# Converte un numero in numero romano
def to_roman(n)
  # se n non è un intero o se non è maggiore di 0 ritorno errore
  return "Errore" unless (n.is_a?(Integer) && n>=0 && n<4000)
  #ritorno 0 per n=0
  return "0" if n==0
  str=""
  #tabbella hash con associati numeri e simboli romani
  cifra={
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  #ciclo che itera la tabella hash
  #e verifica attraverso un case se ho 1, 2 o 3 simboli da aggiungere (es. 8=>VIII)
  #le seguenti due versioni sono entrambe funzionanti
  cifra.each{
    |num, string|
    #if !(n/num==0)
     # str+=string
      #n-=num
      #if !(n/num==0)
       # str+=string
        #n-=num
        #if !(n/num==0)
         # str+=string
          #n-=num
        #end
      #end
    #end
    case (n/num)
    when 1 
      str += string
      n -= num
    when 2
      str += string+string
      n -= 2*num
    when 3
      str += string+string+string
      n -= 3*num
    end
  }
  return str
end
puts to_roman(58)



######
# Completa l'implementazione delle seguenti classi seguendo quanto
# richiesto dai commenti.
######

class Point2D
  # costruisce un punto con coordinate (x,y)
  # nota che non e' necessario nessun controllo sul tipo di x e y
  def initialize(x, y)
    nil
  end

  # la classe punto deve avere rendere accessibili gli attributi `x` e `y`
  # IN SOLA LETTURA

  # la funzione `+` riceve come argomento un oggetto Point2D e restituisce un
  # nuovo oggetto Point2D che ha come coordinate la somma delle coordinate dei
  # due oggetti. (x1 + x2, y1 + y2)
  # la funzione non deve alterare lo stato interno dell'oggetto, ma restituire
  # un nuovo oggetto
  def + (point)
    nil
  end

  # Restituisce una rappresentazione testuale dell'oggetto punto, nella forma
  # "(x,y)", senza spazi.
  # ES: siano x = 1, y = 2.345, la funzione deve restituire "(1,2.345)"
  def to_s
    nil
  end
end

require 'date' # necessario per l'uso della classe Date

class Book
  attr_accessor :title, :author, :release_date, :publisher, :isbn

  # Implementa il costruttore
  # dai un'occhiata a https://robots.thoughtbot.com/ruby-2-keyword-arguments
  #def initialize(title:, author:, release_date:, publisher:, isbn:)
  #end

  # requisiti perche' un libro sia considerato valido:
  # title deve essere una stringa (@title.class == String) non vuota
  # author deve essere una stringa non vuota
  # release_date deve essere un oggetto Date
  # publisher deve essere una stringa non vuota
  # isbn deve essere un Fixnum minore di 10**10 e maggiore di 10**9
  def valid?
    nil
  end

  # restituisce un array di simboli.
  # Se l'oggetto e' valido, restituisce un vettore vuoto
  # Se non lo e', per ogni attributo che non e' valido, la chiave per
  # quell'attributo deve essere presente nel vettore, in qualsiasi ordine.
  # esempio: title e author non sono validi, restituisce [:title, :author]
  def errors
    nil
  end
end

