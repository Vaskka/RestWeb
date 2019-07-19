package com.vaskka.fun.restweb.RestWeb.service.inner;

import com.vaskka.fun.restweb.RestWeb.entity.CommentEntity;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class InnerComment {
    private CommentEntity commentEntity;

    private String creatorName;
}
