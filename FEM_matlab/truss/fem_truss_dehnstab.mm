<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node FOLDED="false" ID="ID_191153586" CREATED="1535699978221" MODIFIED="1537609318417" ICON_SIZE="36.0 pt" BACKGROUND_COLOR="#ffff00" STYLE="rectangle" BORDER_WIDTH="3.0 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#000000" color="#ff0000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <img src="picture/central_image_fem_truss.png" height="200" width="300"/>
    </p>
  </body>
</html>

</richcontent>
<font NAME="Comic Sans MS" SIZE="22"/>
<hook NAME="MapStyle" zoom="0.685">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ICON_SIZE="64.0 pt" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font NAME="Segoe Print" SIZE="22"/>
<edge COLOR="#ffffff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ICON_SIZE="32.0 px" COLOR="#000000" BACKGROUND_COLOR="#ffffcc" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="2.6 pt" SHAPE_VERTICAL_MARGIN="2.6 pt" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="22" BOLD="true" ITALIC="false"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ICON_SIZE="28.0 px" COLOR="#000000" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="20"/>
<edge STYLE="bezier" WIDTH="4"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" ICON_SIZE="24.0 px" COLOR="#000000" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="18"/>
<edge STYLE="bezier" WIDTH="3"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" ICON_SIZE="24.0 px" COLOR="#111111" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="2"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" ICON_SIZE="24.0 px" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="1"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" ICON_SIZE="24.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" ICON_SIZE="16.0 px">
<font SIZE="10"/>
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="29" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<edge COLOR="#ffffff"/>
<node TEXT="Truss Element" POSITION="right" ID="ID_1534362128" CREATED="1535701640439" MODIFIED="1537614114132" HGAP_QUANTITY="26.7499996200204 pt" VSHIFT_QUANTITY="-74.24999778717763 pt" COLOR="#ffffff" BACKGROUND_COLOR="#ff0000">
<edge COLOR="#ff0000" WIDTH="10"/>
<node TEXT="1st Discretizing: total to elements" ID="ID_950308531" CREATED="1537609611448" MODIFIED="1537613060282">
<node TEXT="PvV" ID="ID_562317190" CREATED="1537611397151" MODIFIED="1537612982650" HGAP_QUANTITY="15.499999955296516 pt" VSHIFT_QUANTITY="-12.7499996200204 pt">
<node TEXT="\latex $ \delta A_{tot} = \sum \delta A_{el} = 0 $" ID="ID_173835363" CREATED="1537610438826" MODIFIED="1537612985638" HGAP_QUANTITY="18.499999865889553 pt" VSHIFT_QUANTITY="-21.749999351799506 pt">
<node TEXT="\latex $-\delta A_{el} = &#xa;\int \delta u(x)_{,x} \cdot EA \cdot u(x)_{,x} dx &#xa;- \int \delta u(x) \cdot q_x(x) dx &#xa;- \delta u_{node} \cdot N_{node} &#xa;\neq 0 $" ID="ID_1715894285" CREATED="1537609617933" MODIFIED="1537612989969" MAX_WIDTH="200.0 cm" HGAP_QUANTITY="36.49999932944777 pt" VSHIFT_QUANTITY="-14.249999575316917 pt">
<node TEXT="Weak Form" ID="ID_447478680" CREATED="1537610156963" MODIFIED="1537612993233" HGAP_QUANTITY="28.99999955296518 pt" VSHIFT_QUANTITY="-10.499999687075624 pt">
<node TEXT="virtual Deflection must meet some conditions like actual" ID="ID_424462914" CREATED="1537610233622" MODIFIED="1537612993233" HGAP_QUANTITY="29.749999530613437 pt" VSHIFT_QUANTITY="-18.749999441206473 pt"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="2nd Discretizing: elements to nodes" ID="ID_1664501066" CREATED="1537611240745" MODIFIED="1537613073247">
<node TEXT="Shape Function" ID="ID_1072985977" CREATED="1537611252148" MODIFIED="1537612999107" HGAP_QUANTITY="25.999999642372142 pt" VSHIFT_QUANTITY="-22.499999329447768 pt">
<node TEXT="linear" ID="ID_1651572925" CREATED="1537611440509" MODIFIED="1537613001627" HGAP_QUANTITY="25.249999664723884 pt" VSHIFT_QUANTITY="-26.249999217689062 pt">
<node TEXT="\latex $ u(x) = (1-\frac{x}{l})\cdot u_A + \frac{x}{l} \cdot u_B" ID="ID_1325536118" CREATED="1537611446906" MODIFIED="1537613001627" HGAP_QUANTITY="37.249999307096026 pt" VSHIFT_QUANTITY="-21.749999351799506 pt"/>
</node>
</node>
</node>
<node TEXT="Matrix Form" ID="ID_517237859" CREATED="1537611718175" MODIFIED="1537614050838">
<node TEXT="\latex $&#xa;\begin{pmatrix}&#xa;EA/l &amp; - EA/l \\&#xa;- EA/l &amp; EA/l &#xa;\end{pmatrix}&#xa;\begin{pmatrix}&#xa;u_A \\ u_B&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;N_A \\ N_B&#xa;\end{pmatrix}&#xa;$" ID="ID_444018801" CREATED="1537611751036" MODIFIED="1537614053805" HGAP_QUANTITY="51.49999888241295 pt" VSHIFT_QUANTITY="-53.999998390674634 pt">
<node TEXT="extending..." ID="ID_582007158" CREATED="1537611853095" MODIFIED="1537614056029" HGAP_QUANTITY="49.99999892711642 pt" VSHIFT_QUANTITY="-31.499999061226873 pt">
<node TEXT="\latex $&#xa;\begin{pmatrix}&#xa;EA/l &amp; 0 &amp; - EA/l &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 0 \\&#xa;- EA/l &amp; 0 &amp; EA/l &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 0 &#xa;\end{pmatrix}&#xa;\begin{pmatrix}&#xa;u_A \\ v_A \\ u_B \\ v_B&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;f_{A,x} \\ f_{A,y} \\ f_{B,x} \\ f_{B,y}&#xa;\end{pmatrix}&#xa;$" ID="ID_1791398024" CREATED="1537612749252" MODIFIED="1537614058439" HGAP_QUANTITY="55.999998748302495 pt" VSHIFT_QUANTITY="-50.99999848008161 pt">
<node TEXT="\latex $ \tensor{K}_{el} \cdot \tensor{u}_{lo} = \tensor{f}_{lo}$" ID="ID_79257822" CREATED="1537613621555" MODIFIED="1537614058439" HGAP_QUANTITY="38.74999926239254 pt" VSHIFT_QUANTITY="14.249999575316918 pt"/>
</node>
</node>
</node>
</node>
<node TEXT="From local to global" ID="ID_1470322045" CREATED="1537612946393" MODIFIED="1537614044699">
<node TEXT="Deflection" ID="ID_1103845738" CREATED="1537612955717" MODIFIED="1537613779363" HGAP_QUANTITY="26.7499996200204 pt" VSHIFT_QUANTITY="-11.999999642372142 pt">
<node TEXT="\latex $&#xa;\begin{pmatrix} U_A \\ V_A \\ U_B \\ V_B \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} cos \theta &amp; -sin \theta &amp; 0 &amp; 0 \\ &#xa;sin \theta &amp; cos \theta &amp; 0 &amp; 0  \\ &#xa;0 &amp; 0 &amp; cos \theta &amp; - sin \theta \\ &#xa; 0 &amp; 0 &amp; sin \theta &amp; cos \theta \end{pmatrix}&#xa;\begin{pmatrix} u_A \\ v_A \\ u_B \\ v_B \end{pmatrix}&#xa;&#xa;$" ID="ID_1941064561" CREATED="1537613152997" MODIFIED="1537613886327" HGAP_QUANTITY="48.499998971819906 pt" VSHIFT_QUANTITY="-60.74999818950897 pt" MAX_WIDTH="20.0 cm">
<node TEXT="\latex $&#xa;\tensor{u}_{gl} = \tensor{Q} \cdot \tensor{u}_{lo}&#xa;\Rightarrow \tensor{u}_{lo} = \tensor{Q}^T \cdot \tensor{u}_{gl}&#xa;$" ID="ID_171771073" CREATED="1537613849205" MODIFIED="1537613997816" HGAP_QUANTITY="42.49999915063384 pt" VSHIFT_QUANTITY="4.499999865889553 pt"/>
</node>
</node>
<node TEXT="Force" ID="ID_1865950171" CREATED="1537613766567" MODIFIED="1537614040787" HGAP_QUANTITY="25.249999664723884 pt" VSHIFT_QUANTITY="14.999999552965178 pt">
<node TEXT="\latex $&#xa;\begin{pmatrix} F_{A,x} \\ F_{A,y} \\ F_{B,x} \\ F_{B,y} \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} cos \theta &amp; -sin \theta &amp; 0 &amp; 0 \\&#xa;sin \theta &amp; cos \theta &amp; 0 &amp; 0  \\&#xa;0 &amp; 0 &amp; cos \theta &amp; - sin \theta \\&#xa; 0 &amp; 0 &amp; sin \theta &amp; cos \theta \end{pmatrix}&#xa;\begin{pmatrix}&#xa;f_{A,x} \\ f_{A,y} \\ f_{B,x} \\ f_{B,y}&#xa;\end{pmatrix}&#xa;$" ID="ID_1111871191" CREATED="1537613772425" MODIFIED="1537614040787" HGAP_QUANTITY="54.49999879300597 pt" VSHIFT_QUANTITY="22.499999329447768 pt" MAX_WIDTH="20.0 cm">
<node TEXT="\latex $&#xa;\tensor{f}_{gl} = \tensor{Q} \cdot \tensor{f}_{lo}&#xa;\Rightarrow \tensor{f}_{lo} = \tensor{Q}^T \cdot \tensor{f}_{gl}&#xa;$" ID="ID_910718332" CREATED="1537613897655" MODIFIED="1537614030581" HGAP_QUANTITY="52.99999883770946 pt" VSHIFT_QUANTITY="55.49999834597116 pt"/>
</node>
</node>
<node TEXT="Equation in global Coor.-Sys." ID="ID_194990521" CREATED="1537614042463" MODIFIED="1537614142332" HGAP_QUANTITY="28.24999957531692 pt" VSHIFT_QUANTITY="11.249999664723884 pt">
<node TEXT="\latex $ \tensor{Q} \tensor{K}_{el}  \tensor{Q}^T \cdot \tensor{u}_{gl} = \tensor{f}_{gl}$" ID="ID_15196310" CREATED="1537614081177" MODIFIED="1537614176039" HGAP_QUANTITY="39.49999924004081 pt" VSHIFT_QUANTITY="31.499999061226873 pt"/>
</node>
</node>
</node>
<node TEXT="Branch 2" POSITION="right" ID="ID_1320650365" CREATED="1535701640439" MODIFIED="1535701870129" HGAP_QUANTITY="69.49999834597116 pt" VSHIFT_QUANTITY="8.999999731779095 pt" COLOR="#ffffff" BACKGROUND_COLOR="#0000ff">
<edge COLOR="#0000ff" WIDTH="10"/>
</node>
<node TEXT="Branch 3" POSITION="right" ID="ID_139817617" CREATED="1535701775686" MODIFIED="1535702051254" COLOR="#ffffff" BACKGROUND_COLOR="#00c002" HGAP_QUANTITY="47.74999899417165 pt" VSHIFT_QUANTITY="80.99999758601196 pt">
<edge COLOR="#00c022"/>
</node>
<node TEXT="Branch 6" POSITION="left" ID="ID_1723963285" CREATED="1535701873220" MODIFIED="1535702079599" COLOR="#ffffff" BACKGROUND_COLOR="#993300" HGAP_QUANTITY="37.24999930709604 pt" VSHIFT_QUANTITY="-63.749998100102 pt">
<edge COLOR="#993300"/>
</node>
<node TEXT="Branch 5" POSITION="left" ID="ID_15859522" CREATED="1535701873220" MODIFIED="1535702037198" COLOR="#ffffff" BACKGROUND_COLOR="#ff33ff" HGAP_QUANTITY="71.74999827891594 pt" VSHIFT_QUANTITY="19.499999418854728 pt">
<edge COLOR="#ff33ff"/>
</node>
<node TEXT="Branch 4" POSITION="left" ID="ID_1600223529" CREATED="1535701873220" MODIFIED="1535702040222" COLOR="#ffffff" BACKGROUND_COLOR="#ff9933" HGAP_QUANTITY="44.7499990835786 pt" VSHIFT_QUANTITY="77.24999769777067 pt">
<edge COLOR="#ff9933"/>
</node>
</node>
</map>
