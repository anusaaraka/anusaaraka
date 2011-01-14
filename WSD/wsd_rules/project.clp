
; Added by human being
(defrule project0
(declare (salience 5000))
(id-root ?id project)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 translation)
(samAsa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariyojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  project.clp 	project0   "  ?id "  pariyojanA )" crlf))
)

;Changed meaning "prakRepa" to "pariyojanA"
;Suggested by Dipti Mishra (14-09-09)
(defrule project1
(declare (salience 4900))
(id-root ?id project)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariyojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  project.clp 	project1   "  ?id " pariyojanA)" crlf))
)
;FrameNet is a project housed at the International Computer Science Institute in Berkeley, which produces an electronic resource based on semantic frames.


(defrule project2
(declare (salience 4800))
(id-root ?id project)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariyojanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  project.clp 	project2   "  ?id "  pariyojanA_kara )" crlf))
)

;"project","V","1.pariyojanA karanA"
;A projected drain improvement scheme is being implemented in our colony.
;--"2.PeMkanA"
;The present cine actors must learn to project their voices.
;--"3.dAlanA"
;Colour shades were projected on the dias.
;--"4.bahirviRta honA"
;I saw a projecting beam in the lab.
;
;
;LEVEL 
;Headword : project 
;
;Examples  --
;"project","N","1.yojanA"  
;This engineer works for the irrigation project
;yaha iMjiniyara siMcAI pariyojanA ke lie kAma karawA hE
;--"2.anusaMXAna_kArya"<--anusaMXAna_karane_kI yojanA<--yojanA
;The student left the first project incomplete.
;CAwra ne pahalA anusaMXAna kArya aXUrA CodZa xiyA.
;
;"project","V","1.anxAjZA_lagAnA"<--mUlya_ke_Asa_pAsa_jAnA<--prakRipwa_karanA
;--"2.pariNawa_karanA"<--prakRipwa_karanA
;The present day actors cannot project their voices well.
;Ajakala ke kalAkAra apanI AvAjZa acCe se pariNawa nahIM kara pAwe hE.
;--"3.dAlanA"<--prakRipwa_karanA
;Lights have to be projected on the main character of the play.
;nAtaka ke muKya kalAkAra para prakASa dAlanA padegA. 
;--"4.bahirviRta honA"<--Age_ko_nikalA_huA_honA <-- prakRipwa_honA
;There are some rods projecting out of the roof
;Cawa meM se kuCa salAKeM bahirviRta ho rahI hEM.  
;
;commentary :   project,n :[M.E.projecte <L.projectum,neut.of projectus.pp.of 
;projicere <pro-before,forward+jacere,to throw]
;
;anwarnihiwa sUwra:
;
;"project","V","prakRipwa_karanA"
;
;                           
;                       
;                       bahirviRta_honA
;
;                           ^
;                           |
;                  Age_ko_nikalA_huA_honA
;                           
;                           ^ 
;                           |                     
;                      ============
;            dAlanA <-- | prakRipwa_karanA | - PeMkanA - pariNawa_karanA 
;                      ============    
;                            |
;                            v
;                      Asa_pAsa_jAnA 
;                            |
;                            v
;                      kI_ora_prakRipwa_karanA  
;                            |
;                            v
;                      anxAjZA_lagAnA
;                      
;
; vyAKyA : uparyukwa aMkiwa Sabxa `project' ke kriyA vAkyoM se nimna
;nABikIya arWa "prakRipwa_karanA" nikalawA hE. Ora saMjFA vAkyoM se nABikIya
;arWa "yojanA" nikalawA hE.
;
;sUwra: yojanA^prakRipwa_karanA`
