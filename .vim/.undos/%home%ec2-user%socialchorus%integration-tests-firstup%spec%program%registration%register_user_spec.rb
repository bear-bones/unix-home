Vim�UnDo� ��ly,��3-�� x�3������M�0{�i   _   .      expect(page).to have_text 'User invited'   F   !                       dww�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dwo�     �                <<<<<<< HEAD5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       dwo�    �                =======   F    let(:advocate_id) { Email.find_by(value: user.email).advocate_id }       let(:invite_url) do   S      program_id = ProgramMembership.find_by(advocate_id:).pluck(:program_id).first   U      brand_id, program_slug = Program.find(program_id).pluck(:brand_id, :slug).first   :      brand_slug = Brand.find(brand_id).pluck(:slug).first   ]      reset_token = PasswordResetToken.find_by(advocate_id: advocate_id).pluck(:_value).first   Y      invite_token = Invite.find_by(invited_advocate_id: advocate_id).pluck(:token).first   y      service_path(:advocato, "#{brand_slug}/#{program_slug}/password_resets/#{reset_token}/edit?invite=#{invite_token}")       end   >>>>>>> 5fd1d80 (add spec)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dws�     �      !   ]      .      expect(page).to have_content 'Campaigns'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dws�     �         ]      ,      expect(page).to have_content 'Firstup'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dws�    �      !   ]      7      expect(page.document).to have_content 'Campaigns'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dws�     �      !   ]      <      expect(page.document.root).to have_content 'Campaigns'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             dws�    �         ]      :      expect(page.document.root).to have_content 'Firstup'5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             dws�    �         ]      1      expect(page.root).to have_content 'Firstup'5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             dwt4    �   8   :          n      find("p[title=\"#{user.email}\"]").ancestor('div[data-test="banner-item]').find('div:last button').click�   5   7          ?      find('input[placeholder="Search users"]').set(user.email)�   /   1          2      email.find('input').fill_in with: user.email�   ,   .          5      last_name.find('input').fill_in with: user.last�   )   +          7      first_name.find('input').fill_in with: user.first�                =    let(:advocate_id) { get_advocate_from_email(user.email) }5�_�   	              
   9   O    ����                                                                                                                                                                                                                                                                                                                                                             dwt�    �   8   :   ]      p      find("p[title=\"#{user[:email]}\"]").ancestor('div[data-test="banner-item]').find('div:last button').click5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             dwt�     �         ]      5      expect(page.document).to have_content 'Firstup'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             dwu    �      !   ]      7      expect(page.document).to have_content 'Campaigns'5�_�                    9   Z    ����                                                                                                                                                                                                                                                                                                                                                             dwv�    �   8   :   ]      q      find("p[title=\"#{user[:email]}\"]").ancestor('div[data-test="banner-item"]').find('div:last button').click5�_�                    @   4    ����                                                                                                                                                                                                                                                                                                                                                             dwv�   	 �   ?   A   ]      U      find('div[title="User\'s Avatar"]').ancestor('div.hover-dropdown-target').click5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             dwv�   
 �         ]      &      page.document.synchronize(10) do5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                             dwwe    �   =   ?   ^            �   =   ?   ]    5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             dww}     �   E   G   ^    �   E   F   ^    5�_�                     F   !    ����                                                                                                                                                                                                                                                                                                                                                             dww�    �   E   G   _      .      expect(page).to have_text 'User invited'5��