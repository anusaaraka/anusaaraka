;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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


;@@@ Added by Prachi Rathore[4-2-14]
;Sir Nilratan Sircar, Vice-Chancellor, in his Convocation speech in January 1920, described the work being done in the post - graduate departments of the University thus the most valuable achievement of the post-graduate department during the year was perhaps the impetus that it gave to the work of research. [gyan-nidhi]
;कुलपति सर नीलरतन सरकार ने जनवरी 1920 के अपने दीक्षांत भाषण में विश्वविद्यालय के स्नातकोत्तर विभागों में किये जा रहे कार्य का इस प्रकार वर्णन किया, वर् के दौरान स्नातकोत्तर विभाग की सबसे मुल्यवान उपलब्धि शायद उसके द्वारा शोध कार्य के लइ दी गई प्रेरणा थी।
;The Prime Minister's support will give added impetus to the campaign against crime. [oald]
;प्रधान मन्त्री का सहारा अपराध के विरुद्ध अभियान को अतिरिक्त प्रेरणा देगा . 
(defrule impetus0
(declare (salience 5000))
(id-root ?id impetus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaka  ?id ?)(kriyA-object  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preraNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impetus.clp 	impetus0   "  ?id "  preraNA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[4-2-14]
;What a economy need is a new impetus.
;अर्थ प्रबन्धन को  जिसकी जरूरत है एक नया गतिबल है . 
(defrule impetus1
(declare (salience 4000))
(id-root ?id impetus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawibala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impetus.clp 	impetus1   "  ?id "  gawibala )" crlf))
)


;@@@ Added by Prachi Rathore[4-2-14]
;What a economy need is a new impetus.
;अर्थ प्रबन्धन को  जिसकी जरूरत है एक नया गतिबल है .
(defrule impetus2
(declare (salience 300))
(id-root ?id impetus)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawibala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impetus.clp 	impetus2   "  ?id "  gawibala)" crlf))
)
