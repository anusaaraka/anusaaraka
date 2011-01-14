
(defrule clash0
(declare (salience 5000))
(id-root ?id clash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clash.clp 	clash0   "  ?id "  takarA )" crlf))
)

(defrule clash1
(declare (salience 4900))
(id-root ?id clash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clash.clp 	clash1   "  ?id "  takarAhata )" crlf))
)

;"clash","N","1.takarAhata"
;Clashes broke out between the two groups in the old city.
;There is a clash of swords in the game of fencing.
;--"2.eka_hI_samaya_para_honA"
;There is a clash between two classes so I can attend only one.
;--"3.bemela"
;There is a clash between her blouse && saree.
;
;LEVEL 
;
;
;                `clash' sUwra (nibanXa)
;                -------
;
;`clash' Sabxa ke viviXa prayoga--
;-------------------------  
;
;"clash","V","1.ladZanA"
;               ---- < takarAnA
;The Army clashed with the militants in the Poonch sector.
;--"2.eka_hI_xina_eka_hI_samaya_para_honA"
;               ---- < takarAnA
;The two atheletic events clashed so we had to miss one.
;--"3.raMgo_kA_mela_na_honA"
;               ---- < takarAnA
;The colour of the picture clashed with the wall paint.
;--"4.takarAnA"
;The swords clash in the game of fencing.
;
;"clash","N","1.ladZAI"
;               ---- < takarAnA
;Clashes broke out between the two groups in the old city.
;--"2.eka_hI_samaya_para_honA"
;               ---- < takarAnA
;There is a clash between two classes so I can attend only one.
;--"3.raMgo_yA_dijZAIno_kA_mela_na_honA"
;               ---- < takarAnA   
;There is a clash between her blouse && saree.
;--"4.takkara"
;               ---- < takarAnA
;There is a clash of swords in the game of fencing.
;-------------------------------------------------------
;
;sUwra : ladAI[<takarAnA`]
;-------------
;
;  `clash' Sabxa ke Upara ke viviXa prayogoM meM `takarAne' kA arWa sAmAnya hE . 
;yaxi isa uparisWiwa sUwra ko prawyeka sanxarBa meM, hinxI meM BI xe xeM wo 
;vAkyArWa ko samaJane meM aXika kaTinAI nahIM hogI . saBI arWa sIXe takarAne 
;ke BAva se hI Aye lagawe hEM, bIca ke kisI sewu kI AvaSyakawA nahIM . 
;
;-- takarAne ke kaI arWa hinxI meM howe hEM . takarAne se wAwparya- mela na honA,
;BidanA, ladanA iwyAxi socA jAwA hE . 
;
;-- eka hI samaya meM hone meM BI takarAne kA BAva JalakawA hE . kAraNa- samaya ke 
;eka hI pala meM xo GatanAoM kA honA, unakA takarA jAnA hI hE .
;
;
