
(defrule absent0
(declare (salience 5000))
(id-root ?id absent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absent.clp 	absent0   "  ?id "  anupasWiwa )" crlf))
)

;"absent","Adj","1.anupasWiwa"
;He always absent in the class.
;
(defrule absent1
(declare (salience 4900))
(id-root ?id absent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupasWiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  absent.clp 	absent1   "  ?id "  anupasWiwa_ho )" crlf))
)

;"absent","VT","1.anupasWiwa_honA"
;He was absent from the chemistry class.
;
;LEVEL 
;
;
;Headword : absent
;
;Examples --
;
;"absent","Adj","1.anupasWiwa"
;I remembered all my absent friends.
;mEMne apane saBI anupasWiwa miwroM ko yAxa kiyA.
;
;"2.avixyamAna/nAmOjUxa"-jo vixyamAna na rahe-anupasWiwa 
;Mother's love was totally absent from her childhood.
;usake bacapana meM mAz kA pyAra pUrNawayaH avixyamAna WA
;
;"absent","VT","1.anupasWiwa_honA"
;He was absent from the chemistry class.
;vaha KemistrI klAsa se anupasWiwa WA.
;
;"2.anupasWiwa raKanA/se xUra rahanA"  
;She deliberately absented herself from the meeting.
;vaha jAnabUJakara mItiMga se anupasWiwa rahI.
;
;"absent-minded","Adj","1.anamanA/KoyA-KoyA"   <-- mana se anupasWiwa honA
;He behaves in an absent-minded manner due to his wife's illness.
;vaha apanI pawnI kI bImArI ke kAraNa badZA anamanA vyavahAra karawA hE.
;
;   nota -- "absent",Sabxa ke kriyA Ora viSeRaNa vAkyoM kA arWa eka hI anukUla  
;                Sabxa 'anupasWiwa' se A rahA hE awaH isake liye nimna prakAra
;                xe sakawe hEM
;        
;sUwra : anupasWiwa[honA/rahanA]
;   
;HEAD PREVIOUS	NEXT	EXAMPLES
;
