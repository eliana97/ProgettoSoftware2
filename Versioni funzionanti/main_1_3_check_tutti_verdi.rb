
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
  raise ArgumentError.new('n non è un intero') unless n.is_a? Integer 
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
#puts factorial(5)

# Restituisce la stringa più lunga in un array di stringhe
def find_longest_string(array)
  #controllo sul parametro in ingresso
  raise ArgumentError.new('Il parametro non è un array o non contiene stringhe') unless (array.is_a?(Array) && array.each{|el| el.is_a? String})
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
prova=["ciao","bella","grande"]
#puts find_longest_string(prova)


# Restituisce true se l'array contiene altri array (es. [[1],2,3] => true)
def has_nested_array?(array)
  #controllo su array
  raise ArgumentError.new('Il parametro non è un array') unless array.is_a?(Array)
  #su repl.it le stringhe non vengono considerate come array, quindi ho commentato
  #il codice con il controllo sulle stringhe
  #ciclo che ritorna true se è presente un sotto array
  array.each{
    |x|
    # return true if x.is_a? String
    return true if x.is_a?(Array) 
  }
  return false
end
prova=[2,2,3,[1]]
#prova=2
#puts has_nested_array?(prova)


# Conta il numero di caratteri maiuscoli in una stringa
def count_upcased_letters(string)
  #se string non è una stringa ritorno errore
  raise ArgumentError.new('Il parametro non è una stringa') unless string.is_a? String 
  #divido prima la stringa passata in un array di caratteri
  chars=string.split("")
  #setto a 0 un contatore e poi eseguo il ciclo
  #se il carattere analizzato è maiuscolo incremento count
  count=0
  chars.each{|c| count+=1 if c<='Z' && c>='A'}
  return count
end
#puts count_upcased_letters("CiaO")

# Converte un numero in numero romano
def to_roman(n)
  # se n non è un intero o se non è maggiore di 0 ritorno errore
  raise ArgumentError.new('Il parametro non è un intero o è minore di 0') unless (n.is_a?(Integer) && n>=0 && n<4000)
  #ritorno 0 per n=0
  return "0" if n==0
  str=""
  #tabella hash con associati numeri e simboli romani
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
  cifra.each{
    |num, string|
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
#puts to_roman(34)



######
# Completa l'implementazione delle seguenti classi seguendo quanto
# richiesto dai commenti.
######

class Point2D
  # costruisce un punto con coordinate (x,y)
  # nota che non e' necessario nessun controllo sul tipo di x e y
  #rendo disponibili per la lettura x e y
  attr_reader :x, :y
  #costruttore
  def initialize(x, y)
    @x=x
    @y=y
  end

  # la classe punto deve avere rendere accessibili gli attributi `x` e `y`
  # IN SOLA LETTURA

  # la funzione `+` riceve come argomento un oggetto Point2D e restituisce un
  # nuovo oggetto Point2D che ha come coordinate la somma delle coordinate dei
  # due oggetti. (x1 + x2, y1 + y2)
  # la funzione non deve alterare lo stato interno dell'oggetto, ma restituire
  # un nuovo oggetto
  def + (point)
    #ritorno un nuovo punto in modo da non alterare lo stato interno di point
    return Point2D.new(point.x+x,point.y+y)
  end

  # Restituisce una rappresentazione testuale dell'oggetto punto, nella forma
  # "(x,y)", senza spazi.
  # ES: siano x = 1, y = 2.345, la funzione deve restituire "(1,2.345)"
  def to_s 
    return "(#{x},#{y})"
  end
end
#point=Point2D.new(4,3.5)
#puts point.to_s
#point2=Point2D.new(3,1.5)
#puts point.+(point2).to_s

require 'date' # necessario per l'uso della classe Date

class Book
  #rendo accessibili in lettura e scrittura i parametri
  attr_accessor :title, :author, :release_date, :publisher, :isbn

  # Implementa il costruttore
  # dai un'occhiata a https://robots.thoughtbot.com/ruby-2-keyword-arguments
  def initialize(title:'', author:'', release_date:'', publisher:'', isbn:'')
    @title=title
    @author=author
    @release_date=release_date
    @publisher=publisher
    @isbn=isbn
  end

  # requisiti perche' un libro sia considerato valido:
  # title deve essere una stringa (@title.class == String) non vuota
  # author deve essere una stringa non vuota
  # release_date deve essere un oggetto Date
  # publisher deve essere una stringa non vuota
  # isbn deve essere un Integer minore di 10**10 e maggiore di 10**9
  def valid?
    return false unless title.is_a?(String) && title.length>0
    return false unless author.is_a?(String) && author.length>0
    return false unless release_date.is_a?(Date)
    return false unless publisher.is_a?(String) && publisher.length>0
    return false unless isbn.is_a?(Integer) && (isbn<10**10 && isbn>10**9)
    return true
  end

  # restituisce un array di simboli.
  # Se l'oggetto e' valido, restituisce un vettore vuoto
  # Se non lo e', per ogni attributo che non e' valido, la chiave per
  # quell'attributo deve essere presente nel vettore, in qualsiasi ordine.
  # esempio: title e author non sono validi, restituisce [:title, :author]
  def errors
    ar=[]
    #valuto se libro è valido e ritorno array vuoto in caso positivo
    #o array contenente i simboli in caso negativo
    if valid?
      return ar
    else
      unless title.is_a?(String) && title.length>0
         ar << :title
      end
      unless author.is_a?(String) && author.length>0 
         ar << :author
      end
      unless release_date.is_a?(Date)
         ar << :release_date
      end
      unless publisher.is_a?(String) && publisher.length>0
         ar << :publisher
      end
      unless isbn.is_a?(Integer) && (isbn<10**10 && isbn>10**9)
         ar << :isbn
      end
    end
    return ar
  end
end

b=Book.new(title: "Prova", author: "Prova", release_date: Date.new(2017,3,4), publisher: "Prova", isbn: 1000000050)
#puts b.valid?
ar=b.errors
#print "["
#ar.each{ |el| print ":#{el}, "}
#puts "]"


