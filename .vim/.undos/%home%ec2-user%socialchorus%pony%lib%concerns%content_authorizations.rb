Vim�UnDo� c��ښe��:���*A\Q�����e�c�C���   <   d      matches_edit = current_policy(action: 'content:edit').matches?(content, EDIT_CONTENT_MATCHERS)      :                       b͉�    _�                        !    ����                                                                                                                                                                                                                                                                                                                                                             b͉�     �         <      9    def can_edit_content?(content, actor = current_actor)5�_�                       I    ����                                                                                                                                                                                                                                                                                                                                                             b͊     �         <      X      audience_policy = current_policy(action: 'content:edit_by_audience', actor: actor)5�_�                       C    ����                                                                                                                                                                                                                                                                                                                                                             b͊     �         <      R      topic_policy = current_policy(action: 'content:edit_by_topic', actor: actor)5�_�                        :    ����                                                                                                                                                                                                                                                                                                                                                             b͊    �          <      r      matches_edit = current_policy(action: 'content:edit', actor: actor).matches?(content, EDIT_CONTENT_MATCHERS)5��