package org.hwine.domain.decanting;

import lombok.Data;

@Data
public class FollowVO {
	private String f_id;
	private String f_status;
	private String m_nickname;
	private String m_profile_img;
	private int follower_cnt;
	private int follow_cnt;
	private int f_cnt;
}
