

Given('Estou na home') do
  
end

Given('Clico em Unidades') do
  click_id('br.com.grupofleury.fleury.hml:id/pointsOfCareArea')
  sleep 5 
  
  #Clicando em negar permissao local
  click_id('com.android.packageinstaller:id/permission_deny_button')

end

When('Encontrar a unidade de Brasilia') do
  
  Appium::TouchAction.new.swipe(start_x: 0.90 , start_y: 0.5, offset_x: 0.5, offset_y: 0.5, duration:500).perform
  sleep 5 

  click_xpath('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.ScrollView/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/androidx.appcompat.widget.LinearLayoutCompat[6]/android.widget.TextView[1]')
  sleep 5 
end


Then('Valido o endereco da unidade') do
  Appium::TouchAction.new.swipe(start_x: 0.5, start_y:0.2, end_x:0.5, end_y:0.8, duration:600).perform
  sleep 5

 text_exists?('SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155')
 sleep 5 
end