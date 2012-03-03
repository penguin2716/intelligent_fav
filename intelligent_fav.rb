#-*- coding: utf-8 -*-

Plugin.create :intelligent_fav do
  filter_command() { |menu|
    menu[:intelligent_fav] = {
      :name => 'ふぁぼふぁぼ！',
      :condition => ret_nth,
      :exec => lambda{ |ms|
        Thread.new{
        ms.each { |m|
            if !m.system? and m.favoritable?
              m.favorite(true)
            end
          }
        }
      },
      :visible => true,
      :role => :messages
    }
  }
end
