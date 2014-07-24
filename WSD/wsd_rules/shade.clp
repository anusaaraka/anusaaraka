;@@@ Added by jagriti(25.3.2014)
;This shade of meaning is close to the meaning of the word power used in physics.[ncert]
;अर्थ का यह सूक्ष्म भेद भौतिक विज्ञान में उपयोग की हुई शब्द शक्ति के अर्थ के निकट है . 
(defrule shade2
(declare (salience 5000))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 meaning|opinion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma_Bexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade2   "  ?id "  sUkRma_Bexa )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;There is only a shade of difference in these things.[rajpal]
;इन चीजों में सिर्फ थोडा सा अन्तर है . 
(defrule shade3
(declare (salience 4900))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 difference)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZA_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade3   "  ?id "  WodZA_sA )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;Shade of night.[rajpal]
;रात का अंधेरा.
(defrule shade4
(declare (salience 4800))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 night)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade4   "  ?id "  aMXerA )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;She was wearing a cool pair of shades. [iit-bombay]
;वह धूप के चश्में पहन रही थी . 
(defrule shade5
(declare (salience 4700))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-root ?id1 pair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUpa_kA_caSmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade5   "  ?id "  XUpa_kA_caSmA )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;The news of failure of her brother shaded her.[rajpal]
;उसके भाई की असफलता के समाचार ने उसको उदास कर दिया . 
(defrule shade6
(declare (salience 4600))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 news)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAsa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade6   "  ?id "  uxAsa_kara_xe )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;The blue shades off into red.[rajpal]
;नीला रङ्ग लाल रङ्ग में धीरे धीरे बदल जाता है . 
(defrule shade7
(declare (salience 4500))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_XIre_baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade7   "  ?id "  XIre_XIre_baxala_jA )" crlf))
)
;@@@ Added by jagriti(25.3.2014)
;To shade something from sun.
;धूप से किसी चीज को बचाना . 
(defrule shade8
(declare (salience 4400))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade8   "  ?id "  bacA)" crlf))
)
;.....Default Rule....
(defrule shade0
(declare (salience 100))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade0   "  ?id "  CAyA )" crlf))
)

;"shade","N","1.CAyA"
;A shade is a cool place in summers.
;--"2.raMga"
;Choose a lighter shade.
;--"3.sUkRma_aMwara"
;A word with many shades of meaning.
;--"4.WodZA_sA"
;I think it's a shade warmer today.
;
(defrule shade1
(declare (salience 100))
(id-root ?id shade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Seda_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shade.clp 	shade1   "  ?id "  Seda_lagA )" crlf))
)

;"shade","V","1.Seda_kara[lagA]"
;--"2.AcCAxiwa_karanA"
;She shaded her eyes with her hands.
;--"3.DakanA"
;There was a small shaded light in the corner of the room.
;--"4.CAyiwa_karanA/gaharAnA"
;The shaded areas on the map are very clear.
;--"5.XIre-XIre_baxala_jAnA"
;The painting had scarlet shading off into pink.
;
;LEVEL 
;
;
;"shade","N","1.CAyA"-CAyA 
;A shade is a cool place in summers.
;garmiyoM meM CAyA eka TaMdA sWAna howA hE.
;
;--"2.raMga"-raMga kI CAyA-CAyAkaraNa-CAyA
;Choose a lighter shade.
;isase halkA raMga cuno
;
;--"3.sUkRma aMwara" - viBinna arWoM kI Jalaka - Jalaka
;A word with many shades of meaning.
;kaI arWa CAyAoM vAlA Sabxa
;
;--"4.WodZA sA"--Jalaka
;I think it's a shade warmer today.
;muJe lagawA hE ki Aja WodZA aXika garmI hE
;
;"shades","N","1.CAyAkaraNa"-CAyA
;The beautiful picture depicts the shades of life.
;
;"shade","V","1.AcCAxiwa karanA"--CAyA karanA
;She shaded her eyes with her hands.
;
;--"2.DakanA"-CAyA karanA
;There was a small shaded light by the chair.
;
;--"3.CAyiwa karanA/CAyA karanA"
;The shaded areas on the map are very clear.
;
;--"4.xUsare raMga me parivarwiwa honA"-Jalaka xiKAnA 
;In her painting purple is shading is off into pink colour. 
;Jalaka xiKAnA -Jalaka
;
;
;      nota:-- yaxi uparyukwa 'shade' Sabxa ke liye saBI saMjFA Ora kriyA ke vAkyoM 
;             kA nirIkRaNa kareM wo saBI vAkyoM kA arWa 'CAyA'Ora 'Jalaka'se
;            spaRta ho sakawA hE.awaH'shade' Sabxa kA sUwra nimna prakAra xe sakawe hEM.
;
;sUwra : CAyA[>Jalaka] 
;
