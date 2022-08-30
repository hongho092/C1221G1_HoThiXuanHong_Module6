package com.hongho.service.user;


import com.hongho.dto.user.payload.SignUpRequest;
import com.hongho.model.user.User;

import java.util.List;

public interface IUsersService {


    /**
     * Created by HuuNQ
     * Time 12:00 30/06/2022
     *
     */
    void saveUsers(SignUpRequest signUpRequest);

    /**
     * Created by HuuNQ
     * Time 12:00 30/06/2022
     *
     */
    void saveUser(User users);

    List<User> checkEmail(String email);
}
