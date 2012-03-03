#-*- coding: utf-8 -*-

Plugin.create :intelligent_fav do
  filter_command() { |menu|
    menu[:intelligent_fav] = {
      :slug => :intelligent_fav,
      :name => 'ふぁぼふぁぼ！！！',
      :condition => ret_nth,
      :exec => lambda{ |ms|
        ms.each { |m|
          if !m.message.system? and m.message.favoritable?
            m.message.favorite(true)
          end
        }
      },
      :visible => true,
      :role => :messages
    }
    [menu]
  }
end
