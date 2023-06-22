libname TFM 'C:\Users\USUARIO\Documents\TFM';

proc contents data = TFM.Encuesta_imp;
run;

data TFM.Relaciones_Cl;
set TFM.Relaciones_2;
cluster_relaciones = cluster;
drop cluster var1;
run;

data TFM.rrss_Cl;
set TFM.rrss_2;
cluster_rrss = cluster;
drop cluster var1;
run;

data TFM.Politica_Cl;
set TFM.Politica_2;
cluster_politica = cluster;
drop cluster var1;
run;

data TFM.europa_Cl;
set TFM.europa_2;
cluster_europa = cluster;
drop cluster var1;
run;

data TFM.Pandemia_Cl;
set TFM.pandemia_2;
cluster_pandemia=cluster;
drop cluster var1;
run;

data TFM.Educacion_Cl;
set TFM.Educacion_2;
cluster_educacion = cluster;
drop cluster var1;
run;

data TFM.Social_Cl;
set TFM.Social_2;
cluster_social = cluster;
drop cluster var1;
run;

data TFM.Trabajo_Cl;
set TFM.Trabajo_2;
cluster_trabajo = cluster;
drop cluster var1;
run;

data TFM.Planeta_Cl;
set TFM.Planeta_2;
cluster_planeta= cluster;
drop cluster var1;
run;

data TFM.Futuro_Cl;
set TFM.Futuro_2;
cluster_futuro= cluster;
drop cluster var1;
run;

data TFM.Sode_Cl;
set TFM.SD_2;
cluster_sode=cluster;
drop cluster var1;
run;

proc contents data=TFM.Sode_CL;run;

/*proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, tu_genero; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, tu_edad; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, tu_origen; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, que_estudios_has_terminado; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, tu_ocupacion; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode,cuantos_habitantes_tiene_el_mun; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode, tu_provincia; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode,cuantos_libros_hay_en_tu_casa; run;

proc corresp data=TFM.Sode_Cl all chi2p print=both ;
tables cluster_sode,tu_religion; run;


/*
proc anova data=TFM.Sode_Cl;
class cluster_sode; model abiertas = cluster_sode;
means cluster_sode / tukey;
run;
*/

data TFM.Relaciones_Cl;
    set TFM.Relaciones_Cl;
    ID = monotonic();
run;

data TFM.rrss_cl;
    set TFM.rrss_cl;
    ID = monotonic();
run;

data TFM.Politica_cl;
    set TFM.Politica_cl;
    ID = monotonic();
run;

data TFM.Europa_cl;
    set TFM.Europa_cl;
    ID = monotonic();
run;

data TFM.Pandemia_cl;
    set TFM.Pandemia_cl;
    ID = monotonic();
run;

data TFM.Educacion_cl;
    set TFM.Educacion_cl;
    ID = monotonic();
run;

data TFM.Social_cl;
    set TFM.Social_cl;
    ID = monotonic();
run;

data TFM.Trabajo_cl;
    set TFM.Trabajo_cl;
    ID = monotonic();
run;

data TFM.Planeta_cl;
    set TFM.Planeta_cl;
    ID = monotonic();
run;

data TFM.Futuro_cl;
    set TFM.Futuro_cl;
    ID = monotonic();
run;

data TFM.Sode_Cl;
    set TFM.Sode_Cl;
    ID = monotonic();
run;




data sode_ptep;
merge TFM.Relaciones_Cl TFM.rrss_Cl TFM.Politica_Cl TFM.Europa_Cl TFM.Pandemia_cl
TFM.Educacion_Cl TFM.Social_Cl TFM.Trabajo_Cl TFM.Planeta_Cl TFM.Futuro_Cl TFM.Sode_Cl;
by ID;
run;


data sode_ptep;
set sode_ptep;
select (cluster_relaciones);
when(1) c_relaciones = 're_1'; when(2) c_relaciones = 're_2';
when(3) c_relaciones = 're_3'; when(4) c_relaciones = 're_4';
when(5) c_relaciones = 're_5'; when(6) c_relaciones = 're_6';
when(7) c_relaciones = 're_7'; 
otherwise;
end;

data sode_ptep;
set sode_ptep;
select (cluster_rrss);
when(1) c_rrss = 'rs_1'; when(2) c_rrss = 'rs_2';
when(3) c_rrss = 'rs_3'; when(4) c_rrss = 'rs_4';
when(5) c_rrss = 'rs_5'; when(6) c_rrss = 'rs_6';
when(7) c_rrss = 'rs_7'; when(8) c_rrss = 'rs_8';
when(9) c_rrss = 'rs_9'; when(10) c_rrss = 'rs_10';
otherwise;
end;

select (cluster_politica);
when(1) c_politica = 'po_1'; when(2) c_politica = 'po_2';
when(3) c_politica = 'po_3'; when(4) c_politica = 'po_4';
when(5) c_politica = 'po_5'; when(6) c_politica = 'po_6';
when(7) c_politica = 'po_7'; when(8) c_politica = 'po_8';
when(9) c_politica = 'po_9';when(10) c_politica = 'po_10'; 
otherwise;
end; run;


data sode_ptep;
set sode_ptep;
select (cluster_europa);
when(1) c_europa = 'eu_1'; when(2) c_europa = 'eu_2';
when(3) c_europa = 'eu_3'; when(4) c_europa = 'eu_4';
when(5) c_europa = 'eu_5'; when(6) c_europa = 'eu_6';
when(7) c_europa = 'eu_7'; otherwise;
end;



data sode_ptep;
set sode_ptep;
select (cluster_pandemia);
when(1) c_pandemia = 'pa_1'; when(2) c_pandemia = 'pa_2';
when(3) c_pandemia = 'pa_3'; when(4) c_pandemia = 'pa_4';
when(5) c_pandemia = 'pa_5'; when(6) c_pandemia = 'pa_6';
when(7) c_pandemia = 'pa_7'; when(8) c_pandemia = 'pa_8';
otherwise;
end;

select (cluster_educacion);
when(1) c_educacion = 'ed_1'; when(2) c_educacion = 'ed_2';
when(3) c_educacion = 'ed_3'; when(4) c_educacion = 'ed_4';
when(5) c_educacion = 'ed_5'; when(6) c_educacion = 'ed_6';
when(7) c_educacion = 'ed_7'; when(8) c_educacion = 'ed_8';
when(9) c_educacion = 'ed_9'; when(10) c_educacion = 'ed_10'; 
otherwise;
end;

select (cluster_social);
when(1) c_social = 'so_1'; when(2) c_social = 'so_2';
when(3) c_social = 'so_3'; when(4) c_social = 'so_4';
 otherwise;
end;

select (cluster_trabajo);
when(1) c_trabajo = 'tr_1'; when(2) c_trabajo = 'tr_2';
when(3) c_trabajo = 'tr_3'; when(4) c_trabajo = 'tr_4';
when(5) c_trabajo = 'tr_5'; when(6) c_trabajo = 'tr_6';
when(7) c_trabajo = 'tr_7'; when(8) c_trabajo = 'tr_8';
when(9) c_trabajo = 'tr_9'; when(10) c_trabajo = 'tr_10';  
otherwise;
end;

select (cluster_planeta);
when(1) c_planeta = 'pl_1'; when(2) c_planeta = 'pl_2';
otherwise;
end;

select (cluster_futuro);
when(1) c_futuro = 'ft_16'; when(2) c_futuro = 'ft_2';
when(3) c_futuro = 'ft_3'; when(4) c_futuro = 'ft_4';
when(5) c_futuro = 'ft_5'; when(6) c_futuro = 'ft_6';
when(7) c_futuro = 'ft_7';
otherwise;
end;

run;


/*Relacion Bloques*/

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_relaciones;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_rrss;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_politica;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_europa;
run; 

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_pandemia;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_educacion;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_social;
run;

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_trabajo;
run;

/*proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_planeta;
run;*/

proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport; tables cluster_sode, c_futuro;
run;





/*Todos a la vez*/
proc corresp data=sode_ptep all chi2p print=both dim=2;
ods output cellchisq = aport;
tables cluster_sode, c_educacion c_politica  c_trabajo;
run;

