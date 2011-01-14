
(defrule shade0
(declare (salience 5000))
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
(declare (salience 4900))
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
