;########################################################################

;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by jagriti(4.4.2014)
;According to the Hindu religious book, buying metallic things during the Dhanteras festival has a special significance.
;शास्त्रों में धनतेरस के पर्व पर धातु की चीजें खरीदने का विशेष महत्व है। 
(defrule significance0
(declare (salience 5000))
(id-root ?id significance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " significance.clp  	significance0   "  ?id "   mahawva )" crlf))
)
;...Default Rule...
;@@@ Added by jagriti(4.4.2014)
;I didn't understand the significance of his remarks until later. [oald]
;मैं बाद  तक भी उसकी टिप्पणियों का मतलब नहीं समझा पाया . 
(defrule significance1
(declare (salience 100))
(id-root ?id significance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mawalaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " significance.clp  	significance1   "  ?id "   mawalaba)" crlf))
)

