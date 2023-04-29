/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lxuxer <rdelicad@student.42.com>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/29 20:07:10 by lxuxer            #+#    #+#             */
/*   Updated: 2023/04/29 20:07:13 by lxuxer           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char* ft_strmapi(char const* s, char (*f)(unsigned int, char))
{
    unsigned int i;
    char* result;

    if (s == NULL)
        return (NULL);
    result = (char*)malloc(sizeof(char) * (ft_strlen(s) + 1));
    if (result == NULL)
        return (NULL);
    i = 0;
    while (s[i] != '\0') 
	{
        result[i] = (*f)(i, s[i]);
        i++;
    }
    result[i] = '\0';
    return (result);
}
