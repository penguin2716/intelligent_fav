#-*- coding: utf-8 -*-

Plugin.create :intelligent_fav do

  command(:intelligent_fav,
          name: 'ふぁぼふぁぼ！！！',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |m|
      if !m.message.system? and m.message.favoritable?
        m.message.favorite(true)
      end
    }
  end 

end
