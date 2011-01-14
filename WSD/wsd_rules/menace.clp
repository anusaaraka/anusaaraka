
(defrule menace0
(declare (salience 5000))
(id-root ?id menace)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id menacing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id darAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  menace.clp  	menace0   "  ?id "  darAvanA )" crlf))
)

;"menacing","Adj","1.darAvanA"
;The monster in the movie was menacing.
;
(defrule menace1
(declare (salience 4900))
(id-root ?id menace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRtakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  menace.clp 	menace1   "  ?id "  kaRtakArI )" crlf))
)

;"menace","N","1.kaRtakArI{vyakwi_yA_vaswu}"
;Dennis is definitely not a menace.
;
(defrule menace2
(declare (salience 4800))
(id-root ?id menace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joKima_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  menace.clp 	menace2   "  ?id "  joKima_meM_dAla )" crlf))
)

;"menace","V","1.joKima_meM_dAla"
;LEVEL 
;Headword : menace
;
;Examples --
;
;"nukasAna_xeha"
;All kinds of plastic is a menace to the environment.
;saba waraha kA plAstika paryAvaraNa ke liye nukasAna xeha hE.
;
;"KawaranAka"
;Denis is certainly not a menace.
;denisa SarwiyA KawaranAka nahIM hE.
;
;"XamakI"
;She said this with a voice filled with menace.
;usane yaha XamakI BarI AvAjZa meM kahA.
;
;"XamakI_BarA"
;He walked forward with a menacing look.
;vaha XamakI Bare anxAjZa meM Age baDZA.
;
;anwarnihiwa sUwra ;
;
;KawaranAka - KawarA hogA yaha jawalAnA -- XamakI -- XamakI BarA
;plastic, child -- voice with menace -- mancing look
;
;
;sUwra : KawaranAka^XamakI
