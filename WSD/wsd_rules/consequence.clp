
;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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



;Do not worry, it is of no consequence.
;चिंतित नहीं हो, यह महत्वपूर्ण नहीं है 
;People of some consequence in the art world.
;कला विश्व में कुछ महत्वपूर्ण लोग . 
(defrule consequence0
(declare(salience 3700))
(id-root ?id consequence)
(id-word ?id3 of)
?mng <-(meaning_to_be_decided ?id)
(or(and(viSeRya-of_saMbanXI ?id1 ?id)(not(kriyA-object ?kri ?id1)))(kriyA-of_saMbanXI ?id2 ?id))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id3 mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consequence.clp 	consequence0   "  ?id "  mahawvapUrNa )" crlf))
)

;Two hundred people lost their jobs as a direct consequence of the merger.
;दोसौ लोगों ने विलयन के एक सीधे परिणामस्वरूप उनके काम खोए . 
(defrule consequence1
(declare(salience 3600))
(id-root ?id consequence)
(id-word ?id2 as)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 pariNAmasvarUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consequence.clp 	consequence1   "  ?id "  pariNAmasvarUpa)" crlf))
)

;**************** DEFAULT RULES**************************************

;Have you considered the possible consequences?
;क्या आपने सम्भव परिणाम के बारे में विचार कर चुके हैं? 
;This decision could have serious consequences for the industry.
;उद्योग के लिए इस निर्णय का गम्भीर परिणाम हो सकता है 
(defrule consequence2
(declare(salience 0))
(id-root ?id consequence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consequence.clp 	consequence2   "  ?id "  pariNAma)" crlf))
)

;**************************************************************** EXAMPLES ******************************************************************

;Two hundred people lost their jobs as a direct consequence of the merger.[oald]
;This decision could have serious consequences for the industry.[oald]
;Two hundred people lost their jobs as a direct consequence of the merger.[oald]
;He drove too fast with tragic consequences.[oald]
;To suffer/face/take the consequences of your actions.
;Have you considered the possible consequences?[oald]
;Do not worry, it is of no consequence.[oald]
;People of some consequence in the art world.[oald]
;Everything we do has some kind of consequence.[coca]
;Nobody could remember him mentioning parents or any siblings of consequence.[coca]
;The Israeli state has done nothing of consequence to stop the violence.[coca]
;This was not found to be of consequence when included in this analysis.[coca]

