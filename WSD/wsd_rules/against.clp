
(defrule against0
(declare (salience 5000))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_viruxXa_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against0   "  ?id "  isa_ke_viruxXa_ki )" crlf))
)

(defrule against1
(declare (salience 4900))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_virUxXa_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against1   "  ?id "  usa_ke_virUxXa_ki )" crlf))
)

(defrule against2
(declare (salience 4800))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) beat|hit|smash|bang|crash|dash)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against2   "  ?id "  se )" crlf))
)

(defrule against3
(declare (salience 4700))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) lean|rest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sahAre))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against3   "  ?id "  ke_sahAre )" crlf))
)

(defrule against4
(declare (salience 4600))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) hang)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against4   "  ?id "  ke_sAmane )" crlf))
)

(defrule against5
(declare (salience 4500))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) anger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_prawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against5   "  ?id "  ke_prawi )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;Devyani stumbled against a stone and her foot began to bleed.[gyananidhi]
;देवयानी को एक पत्‍थर से ठोकर लग गयी और उसके पैर से खून बहने लगा
;He squashed his nose against the window.
;उसने दरवाजे से उसकी नाक दबायी
;$$$ Modified by Shirisha Manju (9-6-14) -- added 'rub' to the list
;Your cat keeps on rubbing itself against my leg.
;ApakI billI merI tAzga se svayam ko ragadawI rahawI hE .
(defrule against7
(declare (salience 4500))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?kri ?id1)
(id-root ?kri stumble|squash|rub);added squash in the list (24-jan-2014)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against7   "  ?id "  se )" crlf))
)



;*********************DEFAULT RULE*****************************************

(defrule against6
(declare (salience 4400))
(id-root ?id against)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_viruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  against.clp 	against6   "  ?id "  ke_viruxXa )" crlf))
)

;"against","Prep","1.ke_viruxXa"
;Today, India shall play against South Africa.
;Always take precautions against electric shocks before opening up any electrical appliances for repair.
;--"2.ke_sahAre"
;I was learning against the board but did not know that it was just painted.
;--"3.se_alaga"
;His flashy uniform stood out against the drab && dull clothing of his friends.
;
;LEVEL 
;Headword : against
;
;Examples --
;
;"against","Prep","1.ke_viruxXa" 
;Today, India shall play against South Africa.
;Aja BArawa xakRiNa aPrIkA ke viruxXa KelegA. <--- AmanA_sAmanA_karanA <--ke sAmane honA 
;--"2.se_bacane_kA"
;Always take precautions against electric shocks before opening up any electrical
; appliances for repair.
;koI BI bijalI kA sAmAna TIka karane ke liye Kolane se pahale bijalI ke kareMta se bacane kA inwajZAma kara leM. <-- se alaga <-- ke sAmane honA cAhiye jisase usakA praBAva na padZe 
;--"3.[ke]_sahAre"
;I was leaning against the board but did not know that it was just painted.
;mEM borda ke sahAre KadZI WI para muJe nahIM pawA WA ki vaha aBI-aBI raMgA gayA WA.  <---sahAre <-- sAmane
;--"4.se_alaga"
;His flashy uniform stood out against the drab && dull clothing of his friends.
;usakI camakaxAra yUnIPOYrma usake xoswoM ke baxaraMga Ora PIke raMga ke kapadZoM se alaga xiKa rahI WI. 
;
;
;sUwra : viruxXa[<sAmane]^sahAre
;
;
;
;
;
