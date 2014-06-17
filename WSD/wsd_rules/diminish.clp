;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;What he did has seriously diminished him in many people's eyes.      ;cald
;जो उसने किया ,उसने कई लोगो की नजरों में उसे गिरा दिया.
(defrule diminish0
(declare (salience 5000))
(id-root ?id diminish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminish.clp 	diminish0   "  ?id "  girA_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;I don't wish to diminish the importance of their contribution.         ;oald
;मैं उनके योगदान के महत्व को कम नहीं करना चाहता.
(defrule diminish1
(declare (salience 5000))
(id-root ?id diminish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminish.clp 	diminish1   "  ?id "  kama_kara )" crlf))
)

;-----------------------default rules------------------------------------------
;@@@ Added by Pramila(Banasthali University) on 16-01-2014
;He had told his colleague Mr. Justice Rampini, when he was a young judge, that he would not desire to continue on the bench when his 
;capacity for work had diminished.          ;gyannidhi
;जब वे एक युवा न्यायाधीश थे, उन्होंने अपने एक सहयोगी श्री जस्टिस रामपीनी से कहा था कि जब उसकी कार्यक्षमता कम हो जायेगी तो वे पीठ संबंधी अपना कार्य जारी रखना नहीं चाहेंगे।
(defrule diminish2
(declare (salience 4000))
(id-root ?id diminish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminish.clp 	diminish2   "  ?id "  kama_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-01-2014
(defrule diminish3
(declare (salience 0))
(id-root ?id diminish)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminish.clp 	diminish3   "  ?id "  kama_ho )" crlf))
)
