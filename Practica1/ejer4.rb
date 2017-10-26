require 'minitest/autorun'
require 'minitest/spec'

describe '#en_palabras' do
  it 'devuelve la hora enviada expresada en palabras dividiendo los minutos en distintos rangos' do

    assert_equal("Son las 10 en punto", en_palabras(Time.new(2017, 10, 25, 10)))
    assert_equal("Son las 10 en punto", en_palabras(Time.new(2017, 10, 25, 10,10)))
    assert_equal("Son las 10 y cuarto", en_palabras(Time.new(2017, 10, 25, 10, 20)))
    assert_equal("Son las 10 y media", en_palabras(Time.new(2017, 10, 25, 10, 21)))
    assert_equal("Son las 11 menos veinticinco", en_palabras(Time.new(2017, 10, 25, 10, 35)))
    assert_equal("Son casi las 11", en_palabras(Time.new(2017, 10, 25, 10, 59)))

  end
end

def en_palabras(aTime)
	to_show = { (0..10)=> "Son las #{aTime.hour} en punto", (11..20)=> "Son las #{aTime.hour} y cuarto", (21..34)=> "Son las #{aTime.hour} y media",
	(35..44)=> "Son las #{aTime.hour + 1} menos veinticinco", (45..55)=> "Son las #{aTime.hour + 1} menos cuarto", (56..59)=> "Son casi las #{aTime.hour + 1}"}
	(to_show.select {|k,v| k === aTime.min }.values[0] )

end



