
(defrule clip0
(declare (salience 5000))
(id-root ?id clip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kawara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clip.clp	clip0  "  ?id "  " ?id1 "  kawara_dAla  )" crlf))
)

(defrule clip1
(declare (salience 4900))
(id-root ?id clip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kawara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clip.clp	clip1  "  ?id "  " ?id1 "  kawara_dAla  )" crlf))
)

(defrule clip2
(declare (salience 4800))
(id-root ?id clip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id klipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clip.clp 	clip2   "  ?id "  klipa )" crlf))
)

;"clip","N","1.klipa"
;I bought a packet of paper-clip.
;--"2.golI_dalI_huI_banxUka"
;Clips were attached to the gun for firing.  
;--"1.CaztAI"
;The hedge around the house needs a  clip.
;--"2.prahAra"
;She gave a clip at his right leg.
;--"3.aMSa"
;We saw the clip from the new film.
;
(defrule clip3
(declare (salience 4700))
(id-root ?id clip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clip.clp 	clip3   "  ?id "  jodZa )" crlf))
)

;"clip","V","1.jodZanA"
;A picture was clipped at the back of the letter.
;--"2.CAztanA"
;The parrot's wings were clipped && it was put in the cage.
;
;LEVEL 
;Headword : clip
;
;Examples --
;
;"clip","N","1.klipa"
;I bought a packet of paper-clips.
;mEMne kAgajZa ke klapoM kA eka pAketa KarIxA.
;--"2.cimatI"
;I need some hair clips.
;muJe kuCa cimatiyAz cAhiyez
;--"3.golI_dalI_huI_banxUka"
;Clips were attached to the gun for firing.
;
;"clip","N","1.CaztAI"
;The hedge around the house needs a  clip.
;Gara ke cAroM ora kI heja ko CaztAI kI jZarUrawa hE.
;--"2.cikotI"
;She gave a clip at his right leg.
;usane usake xAez pAzva para cikotI kAtI
;--"3.aMSa"
;We saw the clip from the new film.
;hamane nayI Pilma ke kuCa aMSa xeKe.
;
;"clipping","N","1.kawarana"
;I have collectd all the news clippings.
;mEMne samAcAra kI saba kawarane ikaTTI kara lI hEM.
;
;"clip","V","1.jodZanA{klipa_se}"
;A picture was clipped at the back of the letter.
;pawra ke pICe eka Poto judZI_huI{klipa_se}_hE.
;--"2.kAtanA"
;She clipped her hair.
;usane apane bAla kAta liye.
;Ram clips his nails every Sunday.
;hara ravivAra ko rAma apane nAKUna kAtawA hE.
;--"3.kawaranA"
;The parrot's wings were clipped && it was put in the cage.
;wowe ke paMKa kawara xiye gaye Ora use piMjadZe meM raKa xiyA.
;
;anwarnihiwa sUwra ;
;
;klipa{cimatA yA cimatI} - klipa se eka sAWa jodZanA{cimate se pakadZane jEse} -- cimate ke kinAre wejZa XAra ke hone para kasa kara pakadZane se jisa cIjZa ko pakadZe hEM usakA kata jAnA - kAtanA..kawaranA -- jo kAtA jAe vaha -kawarana
;
;sUwra : klipa[__>kawarana]
