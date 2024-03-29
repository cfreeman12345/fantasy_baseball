%Upload all data from the fantasy baseball season (done by copying and
%pasting, but looking to more efficiently accomplish this for the 2024
%baseball season).  Each matrix has 14 columns, representing the team's
%performance in each of the 14 categories of interest in a given week.
DD = [45, 99, 13, 46, 8, .277, .807, 9, 0, 0, 134, 2.39, 1.12, 10.67;
46, 70, 11, 32, 4, .294, .911, 7, 1, 1, 96, 2.45, .96, 9.78;
28, 55, 10, 22, 4, .234, .713, 5, 0, 2, 80, 3.82, 1.11, 9.27;
32, 60, 8, 21, 6, .265, .782, 4, 1, 1, 80, 2.30, 1.15, 11.49;
37, 60, 11, 29, 1, .241, .781, 3, 0, 2, 66, 6.02, 1.54, 9.23;
28, 55, 8, 29, 3, .239, .723, 4, 0, 0, 55, 2.45, 1.18, 9.00;
38, 67, 14, 43, 3, .272, .839, 1, 0, 0, 86, 4.32, 1.29, 9.52;
37, 65, 13, 34, 4, .261, .823, 6, 1, 2, 69, 4.62, 1.33, 10.29;
36, 66, 10, 46, 3, .260, .764, 7, 0, 0, 84, 2.01, 1.02, 10.55;
50, 70, 13, 31, 8, .299, .886, 4, 0, 1, 71, 5.26, 1.46, 9.83;
49, 74, 16, 40, 8, .272, .891, 5, 0, 1, 60, 3.21, 1.07, 9.64;
35, 60, 6, 28, 10, .247, .701, 4, 0, 0, 79, 2.73, .90, 8.64;
48, 71, 15, 36, 7, .286, .873, 6, 0, 3, 81, 2.22, .85, 9.99;
41, 80, 11, 31, 9, .302, .824, 7, 0, 1, 71, 3.25, 1.16, 7.95;
60, 92, 24, 67, 5, .264, .924, 5, 0, 2, 123, 5.37, 1.21, 10.31;
35, 61, 11, 29, 6, .296, .922, 1, 0, 2, 67, 3.23, 1.34, 11.38;
43, 72, 10, 31, 10, .265, .762, 3, 0, 0, 72, 5.23, 1.40, 10.18];
B = [77, 123, 19, 69, 7, .318, .922, 2, 0, 7, 71, 4.01, 1.17, 10.95;
37, 55, 10, 35, 6, .247, .750, 5, 0, 1, 63, 3.18, 1.12, 9.10;
34, 48, 12, 37, 8, .246, .813, 4, 0, 4, 44, 4.20, 1.16, 8.03;
27, 37, 3, 18, 2, .179, .548, 2, 0, 1, 49, 2.15, .95, 8.76;
40, 61, 9, 30, 4, .257, .765, 2, 0, 0, 45, 2.63, 1.02, 8.44;
26, 48, 9, 31, 4, .261, .834, 5, 0, 0, 61, 2.67, 1.05, 9.58;
27, 49, 10, 29, 3, .255, .807, 3, 1, 1, 59, 2.83, 1.15, 11.14;
27, 56, 9, 33, 3, .260, .771, 5, 0, 0, 46, 5.13, 1.42, 8.75;
36, 65, 7, 25, 4, .273, .787, 3, 0, 5, 51, 2.66, .81, 9.06;
29, 54, 6, 30, 5, .232, .679, 3, 0, 3, 46, 4.37, 1.28, 9.13;
25, 58, 4, 32, 1, .252, .707, 3, 0, 0, 47, 4.75, 1.16, 8.94;
24, 47, 9, 28, 1, .247, .749, 4, 1, 2, 47, 1.97, .77, 8.40;
29, 49, 8, 28, 2, .245, .763, 3, 0, 1, 36, 5.19, 1.50, 9.35;
38, 65, 9, 30, 3, .270, .760, 3, 1, 2, 84, 2.92, 1.17, 12.26;
58, 92, 18, 48, 6, .269, .832, 5, 0, 5, 88, 4.36, 1.21, 10.38;
35, 63, 12, 42, 4, .289, .850, 1, 0, 3, 41, 6.47, 1.71, 9.15;
29, 43, 10, 29, 5, .234, .797, 3, 1, 3, 39, 3.86, .95, 7.92];
BB = [60, 98, 19, 60, 7, .261, .808, 3, 0, 4, 74, 5.92, 1.52, 9.12;
35, 53, 14, 34, 6, .232, .763, 3, 0, 1, 71, 3.57, 1.40, 10.14;
35, 63, 14, 49, 5, .249, .793, 3, 0, 4, 63, 3.29, 1.10, 9.00;
36, 49, 11, 29, 1, .223, .743, 7, 0, 2, 73, 3.80, 1.15, 7.70;
37, 68, 13, 52, 3, .267, .824, 5, 0, 1, 61, 3.58, 1.12, 8.40;
25, 45, 12, 28, 4, .210, .704, 4, 1, 0, 95, 2.73, 1.02, 9.26;
44, 60, 16, 42, 4, .259, .837, 3, 1, 0, 66, 3.68, 1.30, 8.10;
26, 67, 5, 26, 5, .251, .690, 4, 0, 2, 62, 3.82, 1.40, 8.17;
26, 65, 9, 30, 6, .289, .841, 3, 0, 0, 62, 3.76, 1.33, 8.33;
26, 52, 11, 28, 4, .225, .704, 5, 1, 2, 66, 1.86, .87, 8.17;
31, 53, 11, 34, 4, .241, .787, 2, 0, 3, 61, 5.93, 1.72, 10.04;
36, 62, 14, 36, 9, .284, .882, 4, 0, 0, 73, 4.29, 1.27, 10.43;
43, 61, 19, 38, 11, .271, .946, 4, 0, 0, 91, 3.74, 1.06, 10.32;
36, 66, 14, 45, 6, .287, .880, 4, 0, 3, 77, 3.90, 1.37, 7.70;
56, 81, 14, 46, 11, .246, .775, 5, 0, 3, 107, 4.54, 1.50, 9.35;
30, 46, 11, 37, 6, .224, .738, 3, 0, 1, 60, 3.80, 1.44, 8.44;
29, 60, 8, 25, 5, .294, .877, 9, 0, 1, 105, 4.63, 1.35, 10.35];
PQ = [62, 102, 14, 53, 10, .267, .792, 8, 1, 6, 86, 2.56, 1.04, 9.56;
40, 57, 6, 31, 7, .245, .757, 5, 0, 5, 62, 5.00, 1.43, 10.33;
35, 56, 12, 40, 7, .250, .797, 3, 0, 4, 42, 2.54, .90, 9.69;
34, 57, 11, 34, 5, .254, .766, 1, 0, 6, 43, 4.85, 1.54, 9.92;
37, 54, 11, 29, 2, .223, .676, 1, 0, 3, 60, 2.94, 1.08, 11.02;
41, 64, 10, 34, 6, .262, .735, 3, 0, 5, 53, 3.86, 1.07, 9.29;
35, 61, 8, 30, 5, .242, .714, 4, 0, 4, 62, 4.58, 1.27, 10.15;
40, 71, 14, 43, 7, .289, .888, 3, 0, 5, 62, 3.14, 1.22, 10.80;
35, 62, 6, 33, 8, .261, .712, 1, 0, 7, 57, 4.41, 1.22, 10.06;
27, 62, 10, 26, 5, .262, .756, 5, 0, 5, 57, 2.53, .90, 9.62;
29, 52, 8, 33, 10, .227, .684, 3, 0, 6, 43, 4.60, 1.36, 8.23;
28, 53, 9, 18, 3, .241, .700, 3, 0, 5, 70, 3.69, 1.16, 11.74;
33, 62, 7, 31, 4, .262, .744, 2, 0, 6, 67, 3.67, 1.24, 10.70;
31, 61, 10, 38, 5, .252, .725, 5, 1, 5, 77, 2.50, .91, 8.74;
48, 85, 19, 56, 8, .239, .761, 5, 0, 12, 106, 4.97, 1.30, 10.97;
33, 59, 9, 26, 8, .257, .755, 5, 1, 2, 32, 2.37, .92, 7.58;
33, 63, 13, 43, 6, .267, .836, 4, 0, 4, 61, 1.76, .94, 9.75];
EE = [64, 95, 11, 36, 13, .251, .733, 5, 0, 7, 95, 5.56, 1.44, 10.78;
28, 57, 7, 29, 5, .241, .698, 4, 0, 3, 49, 3.49, 1.22, 11.41;
40, 58, 14, 32, 4, .234, .761, 6, 0, 2, 84, 2.08, .91, 12.46;
25, 51, 7, 25, 11, .234, .667, 6, 1, 5, 52, 2.01, .85, 10.48;
34, 62, 6, 28, 2, .268, .749, 2, 0, 6, 47, 3.57, 1.41, 10.49;
27, 60, 8, 31, 8, .264, .732, 4, 0, 5, 43, 2.18, 1.14, 9.36;
29, 66, 8, 37, 10, .296, .859, 2, 0, 5, 56, 4.00, 1.31, 11.20;
38, 66, 6, 23, 7, .267, .766, 3, 0, 6, 66, 3.21, 1.23, 10.61;
37, 70, 14, 35, 9, .293, .872, 2, 0, 4, 50, 3.12, 1.18, 9.18;
29, 54, 10, 36, 5, .269, .832, 4, 0, 7, 41, 3.22, 1.14, 8.26;
35, 63, 5, 28, 8, .275, .793, 4, 0, 8, 50, 2.40, 1.15, 7.99;
25, 47, 5, 19, 5, .229, .638, 6, 0, 9, 82, 2.39, 1.21, 10.85;
36, 59, 9, 40, 7, .286, .792, 3, 0, 5, 37, 7.66, 1.62, 7.09;
33, 54, 11, 32, 10, .244, .800, 2, 0, 7, 42, 5.06, 1.18, 10.13;
34, 73, 12, 46, 3, .233, .693, 6, 0, 9, 84, 3.59, 1.13, 9.15;
21, 38, 5, 23, 2, .205, .619, 5, 0, 4, 38, 4.14, 1.45, 7.49;
34, 62, 12, 40, 9, .332, 1.008, 1, 0, 3, 41, 6.15, 1.46, 9.00];
PMM = [43, 102, 9, 40, 13, .312, .850, 6, 0, 6, 86, 2.83, 1.17, 11.06;
25, 42, 7, 32, 6, .188, .607, 3, 0, 6, 59, 3.70, 1.36, 9.48;
27, 56, 7, 29, 5, .229, .657, 3, 0, 3, 55, 5.36, 1.37, 10.92;
38, 67, 9, 31, 10, .293, .842, 2, 0, 4, 49, 4.82, 1.47, 11.81;
37, 68, 8, 30, 13, .280, .789, 1, 0, 5, 55, 5.36, 1.43, 10.92;
32, 48, 7, 27, 7, .206, .617, 3, 0, 2, 54, 3.65, 1.03, 9.85;
36, 58, 9, 27, 7, .257, .760, 4, 0, 5, 36, 2.54, .89, 7.04;
27, 62, 6, 27, 8, .242, .695, 6, 0, 3, 62, 2.98, 1.07, 8.81;
23, 50, 4, 22, 7, .243, .679, 3, 0, 6, 42, 6.31, 1.52, 9.15;
36, 59, 11, 42, 4, .277, .852, 3, 0, 3, 47, 3.29, 1.24, 10.32;
26, 59, 9, 34, 10, .229, .671, 5, 0, 3, 64, 2.77, .98, 8.86;
31, 63, 9, 38, 7, .263, .774, 2, 0, 7, 55, 4.41, 1.31, 10.10;
28, 53, 8, 37, 5, .227, .704, 2, 0, 3, 55, 4.29, 1.29, 11.79;
26, 58, 8, 26, 7, .245, .725, 1, 0, 7, 63, 6.97, 1.47, 10.97;
52, 96, 14, 49, 9, .262, .777, 2, 0, 12, 85, 3.38, 1.10, 9.56;
33, 68, 11, 39, 3, .302, .892, 3, 0, 3, 58, 4.92, 1.32, 9.21;
34, 64, 11, 36, 15, .249, .756, 3, 0, 8, 42, 5.56, 1.33, 8.66];
KC = [56, 99, 15, 53, 10, .283, .826, 7, 0, 4, 77, 3.74, 1.31, 9.28;
29, 73, 6, 45, 12, .304, .830, 2, 0, 4, 53, 4.78, 1.27, 11.01;
39, 52, 10, 31, 8, .245, .777, 3, 0, 4, 47, 3.38, 1.14, 8.35;
33, 66, 10, 31, 9, .275, .787, 7, 0, 8, 72, 2.64, .79, 11.17;
34, 51, 10, 37, 6, .231, .776, 2, 0, 4, 53, 5.03, 1.47, 12.13;
30, 54, 7, 23, 9, .255, .741, 2, 0, 9, 41, 3.28, 1.09, 10.35;
38, 56, 12, 40, 5, .268, .870, 3, 0, 6, 44, 3.76, 1.30, 10.33;
20, 40, 8, 16, 2, .190, .574, 5, 0, 4, 79, 4.20, 1.25, 11.85;
20, 43, 3, 12, 2, .210, .577, 2, 0, 5, 46, 5.48, 1.39, 9.00;
31, 58, 14, 33, 6, .280, .922, 1, 0, 6, 63, 5.77, 1.20, 11.73;
34, 63, 10, 31, 8, .297, .904, 6, 0, 5, 74, 4.71, 1.43, 10.25;
29, 44, 12, 33, 4, .204, .669, 3, 0, 10, 46, 4.43, 1.29, 9.70;
36, 59, 12, 38, 1, .260, .799, 8, 0, 9, 72, 2.49, 1.00, 9.97;
47, 77, 16, 50, 6, .336, 1.046, 6, 0, 9, 73, 3.50, 1.15, 10.21;
45, 92, 16, 56, 7, .295, .870, 2, 0, 11, 65, 4.34, 1.14, 12.81;
26, 40, 8, 19, 6, .213, .659, 4, 0, 3, 37, 4.50, 1.53, 10.41;
40, 71, 17, 41, 7, .306, .966, 1, 0, 5, 53, 4.27, 1.44, 9.06];
LL = [66, 98, 13, 60, 10, .282, .851, 5, 0, 1, 42, 1.33, .82, 7.99;
42, 64, 6, 41, 12, .262, .761, 2, 0, 2, 57, 1.89, .97, 9.80;
44, 79, 12, 39, 6, .299, .869, 1, 0, 1, 45, 6.25, 1.59, 10.04;
36, 67, 9, 37, 6, .276, .832, 2, 0, 0, 31, 7.91, 1.48, 8.45;
32, 66, 5, 30, 4, .258, .717, 1, 0, 0, 52, 2.41, .93, 8.36;
25, 54, 9, 27, 7, .236, .753, 3, 0, 0, 56, 4.39, 1.28, 9.11;
38, 49, 7, 27, 7, .202, .629, 3, 0, 1, 55, 5.43, 1.16, 8.53;
36, 52, 9, 27, 4, .232, .737, 7, 0, 1, 57, 2.72, 1.00, 9.68;
33, 56, 10, 31, 7, .255, .752, 3, 1, 0, 49, 2.98, 1.06, 9.73;
33, 47, 9, 33, 8, .224, .710, 2, 0, 0, 37, 3.47, 1.29, 9.17;
35, 63, 12, 43, 5, .286, .902, 4, 0, 0, 39, 2.58, 1.06, 7.74;
40, 64, 9, 29, 4, .287, .882, 3, 0, 1, 68, 4.28, 1.31, 9.09;
31, 56, 12, 36, 2, .257, .836, 3, 0, 1, 50, 4.72, 1.38, 9.44;
43, 59, 8, 22, 3, .223, .696, 6, 1, 0, 64, 2.55, .94, 10.87;
54, 95, 15, 58, 3, .267, .817, 3, 0, 2, 87, 5.42, 1.29, 9.25;
28, 44, 7, 21, 3, .237, .757, 6, 0, 1, 56, 1.98, 1.08, 8.54;
47, 68, 15, 46, 5, .272, .866, 1, 0, 4, 34, 8.23, 1.61, 11.20];
%Run "standings" on each team to get the number of wins, losses, and ties
%the team would have if they played every team every week.  
DD1 = standings(DD, B, BB, PQ, EE, PMM, KC, LL);
BB1 = standings(BB, B, DD, PQ, EE, PMM, KC, LL);
B1 = standings(B, DD, BB, PQ, EE, PMM, KC, LL);
PQ1 = standings(PQ, B, BB, DD, EE, PMM, KC, LL);
EE1 = standings(EE, B, BB, PQ, DD, PMM, KC, LL);
PMM1 = standings(PMM, B, BB, PQ, EE, DD, KC, LL);
KC1 = standings(KC, B, BB, PQ, EE, PMM, DD, LL);
LL1 = standings(LL, B, BB, PQ, EE, PMM, KC, DD);
%Calculate each team's expected win percentage
DD_win = (DD1(1)+0.5*DD1(3))/(DD1(1)+DD1(2)+DD1(3));
BB_win = (BB1(1)+0.5*BB1(3))/(BB1(1)+BB1(2)+BB1(3));
B_win = (B1(1)+0.5*B1(3))/(B1(1)+B1(2)+B1(3));
PQ_win = (PQ1(1)+0.5*PQ1(3))/(PQ1(1)+PQ1(2)+PQ1(3));
EE_win = (EE1(1)+0.5*EE1(3))/(EE1(1)+EE1(2)+EE1(3));
PMM_win = (PMM1(1)+0.5*PMM1(3))/(PMM1(1)+PMM1(2)+PMM1(3));
KC_win = (KC1(1)+0.5*KC1(3))/(KC1(1)+KC1(2)+KC1(3));
LL_win = (LL1(1)+0.5*LL1(3))/(LL1(1)+LL1(2)+LL1(3));
%Sort the teams in order of win percentage, and display the expected
%standings.
teams = {'Diamond Dogs', 'Beantown Bashers', 'Bastards', 'PQ', 'Evil Empire', 'Pops Meal Mobile', 'Kid Charlemagne', 'Louisiana Lightning'};
win_percents = {DD_win, BB_win, B_win, PQ_win, EE_win, PMM_win, KC_win, LL_win};
T = table(teams', win_percents', 'VariableNames', {'Teams', 'Win_Percentage'});
sortedT = sortrows(T, 'Win_Percentage', 'descend');
disp(sortedT)