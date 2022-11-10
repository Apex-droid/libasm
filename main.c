/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahelper <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/08 07:50:58 by ahelper           #+#    #+#             */
/*   Updated: 2021/04/08 08:07:04 by ahelper          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{
	char	*char1;
	char	*char2;

	char2 = "Hello World3";
	char1 = "Hello World1";
	printf("\nSTRCMP\n\n");
	printf("ORIGIN: %d$\n", strcmp(char1, char2));
	printf("CUSTOM: %d$\n", ft_strcmp(char1, char2));
	printf("ORIGIN: %d$\n", strcmp(char1, char2));
	printf("CUSTOM: %d$\n", ft_strcmp(char1, char2));
	printf("\nSTRLEN\n\n");
	printf("ORIGIN: %zu$\n", strlen("The length of this string is 42 \
			characters"));
	printf("CUSTOM: %zu$\n", ft_strlen("The length of this string is 42 \
			characters"));
	return (0);
}
