
(defrule flank0
(declare (salience 5000))
(id-root ?id flank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pArSva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flank.clp 	flank0   "  ?id "  pArSva )" crlf))
)

;"flank","N","1.pArSva{jAnavara_ke}"
;While riding he held the flanks of his horse tightly.
;--"2.kinArA{makAna_Axi_kA}"
;The flank of this building is in a dangerous state.
;--"3.kinArevAlA_BAga{POja_kA}"
;The enemy attacked the flank of the army.
;
(defrule flank1
(declare (salience 4900))
(id-root ?id flank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flank.clp 	flank1   "  ?id "  bIca_meM )" crlf))
)

;"flank","V","1.bIca_meM"
;The leader was flanked by his security staff.
;
;LEVEL 
;Headword : flank
;
;Examples --
;
;"flank","N","1.pArSva{jAnavara_ke}"
;While riding he held the flanks of his horse tightly.
;savArI karawe samaya usane apane GodZe ke xono pArSva BAgoM ko kasa kara pakadZa liyA.
;
;--"2.bAjUvAlA_hissA{makAna_Axi_kA}"
;The flank of this building is in a dangerous state.
;isa makAna kA bAjUvAlA hissA kAPI KawaranAka hAlawa meM hE.
; 
;--"3.kinArevAlA_BAga{POja_kA}"
;The enemy attacked the right flank of the army.
;xuSmana ne senA ke kinArevAle hisse para AkramaNa kiyA.
;
;"flank","V","1.GirA_honA{xono_ora_se}"
;The leader was flanked by his security staff.
;newA apane surakRAkarmiyoM se Gire We{xono_ora_se}.
;
;
;Upara xiye uxAharaNoM se spaRta hE ki 'flank' Sabxa kA mUla arWa 'pArSva' hE.
;pArSva se 'pArSva_hisse' kA arWa vikasiwa huA. yaha hissA jAnavara ke SarIra kA yA
;  kisI imArawa kA ho sakawA hE. Ese hI senA kI kinArevAlI tukadZI BI 'flank'
;ho sakawI hE. kriyA rUpa meM prayoga hone para isakA arWa 'kinAre honA' AwA hE.
;Upara xiye kriyA ke uxAharaNa meM isakA karmavAcya prayoga hE awaH isakA arWa 'Gire_honA{kinAroM se}' A rahA hE. arWAw 'surakRAkarmI kinAre para hEM' Ora ve jisake kinAre hEM vaha unase 'GirA_huA' hE. 
;
;isakA sUwra hogA -
;
;sUwra : pArSva`
