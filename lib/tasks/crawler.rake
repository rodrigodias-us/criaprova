require 'rubygems'
require 'mechanize'

namespace :crawler do
  desc "TODO"
  task concursosnobrasil: :environment do

    a = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }

    a.get('https://www.concursosnobrasil.com.br/questoes/portugues/nivel-fundamental/') do |page|
      form = page.forms.last
      form.radiobuttons.map{|e| e.click}
      result = form.submit
      
      result.css('li[id="questao_1"], li[id="questao_2"], li[id="questao_3"], li[id="questao_4"], li[id="questao_5"], li[id="questao_6"], li[id="questao_7"], li[id="questao_8"], li[id="questao_9"], li[id="questao_10"]').each do |question|
        code = question.css('b')[0].content
        replys = question.css('li span').map{|e| e.content}
        asking = question.content
        
        correct = question.css('.resultado')[0].css('p')[0].content
        
        asking.gsub!(code, '')
        replys.each {|r| asking.gsub!(r, '')}
        asking.gsub!(question.css('.resultado')[0].content, '')
        asking.strip!
        
        puts "#{asking}\n\n"
      end
    end
  end

end
