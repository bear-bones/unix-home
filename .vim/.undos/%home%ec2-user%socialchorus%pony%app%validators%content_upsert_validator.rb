Vim�UnDo� �^��z��ӊI�VP�9{�~q}���nmNK�   �   ;  attr_reader :authed_user, :content, :params, :permissions      ;                       b�`%    _�                     "   
    ����                                                                                                                                                                                                                                                                                                                                                             b�]N     �   "   $   �      
        # �   "   $   �    5�_�                    $        ����                                                                                                                                                                                                                                                                                                                            $          2          V       b�]a     �   #   3   �              if is_new?   �          errors.push "User Contributor must have permission to add #{differences_cc_ids} content channels" if differences_cc_ids.present?   2        elsif content.publication_state != 'draft'   X          existing_cc_ids = content.content_channels_contents.pluck(:content_channel_id)   u          # it guarantees that the contributor can only update contents associated with channels he/she has access to   %          if existing_cc_ids.present?   @            common_cc_ids = contributor_cc_ids & existing_cc_ids   v            errors.push "User Contributor must have permission to access to the content" unless common_cc_ids.present?       G            existing_diff_cc_ids = existing_cc_ids - contributor_cc_ids   `            if (diff_cc_ids = differences_cc_ids - existing_diff_cc_ids) && diff_cc_ids.present?   h              errors.push "User Contributor must have permission to add #{diff_cc_ids} content channels"               end   `            if (diff_cc_ids = existing_diff_cc_ids - differences_cc_ids) && diff_cc_ids.present?   k              errors.push "User Contributor must have permission to remove #{diff_cc_ids} content channels"5�_�                    2       ����                                                                                                                                                                                                                                                                                                                            $          2          V       b�]f     �   2   4   �                      �   2   4   �    5�_�                       =    ����                                                                                                                                                                                                                                                                                                                            $          2          V       b�]o    �      	   �      >  def initialize(id, content_params, authenticated_user = nil)5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             b�_�    �         �          �         �    5�_�                        ;    ����                                                                                                                                                                                                                                                                                                                                                             b�`$    �         �      ;  attr_reader :authed_user, :content, :params, :permissions5��