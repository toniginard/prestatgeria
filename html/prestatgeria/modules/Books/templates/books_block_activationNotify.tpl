<div class="blocActivation">
    <div>
        {gt text="Tens llibres pendents d'acceptació."}
    </div>
    <br />
    {foreach item="book" from="$books"}
    <div class="toActivateInfo">
        {*}
        {if $book.newBookAdminName == ''}
        {*}
        <div>
            {gt text="Títol del llibre que t'ha estat assignat"}: <strong>{$book.bookTitle}</strong>
        </div>
        <div>
            {gt text="Centre que t'ha fet l'assignació"}: <strong>{$book.schoolType} {$book.schoolName}</strong>
        </div>
        <div>
            {gt text="Ara has de decidir si vols acceptar o no l'assignació. En aquest cas afirmatiu, fes clic al botó d'acceptació del llibre. Si sospites que el llibre t'ha estat assignat per error o que no et correspon, no l'acceptis."}
        </div>
        <div>
            {gt text="A l'hora d'acceptar i fer ús del llibre tingues present les condicions d'ús dels llibres digitals de la XTEC."} <a href="#">{gt text="Llegir les condicions d'ús"}</a>
        </div>
        <br />
        <div>
            <form  method="post" name="assignment_form" id="assignment_form" action="{modurl modname='Books' type='user' func='submitActivationNotify'}" enctype="application/x-www-form-urlencoded">
                <input type="hidden" name="bookId" value="{$book.bookId}">
                <div>
                    <input type="submit" name="submit" value="{gt text="Accepto l'assignació"}" />
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type="submit" name="submit" value="{gt text="Rebutjo l'assignació i la vull esborrar"}" />
                </div>
            </form>
        </div>
        <br />
        <div>
            {gt text="En cas d'acceptar el llibre tingues en compte que"}
            {if $book.newBookAdminName != ''}
            {gt text="l'adreça d'accés a aquest llibre és"}:
            <p>
                <a href="{$bookSoftwareUrl}/{$book.schoolCode}_{$book.bookId}/llibre/" target="_blank">
                    {$bookSoftwareUrl}/{$book.schoolCode}_{$book.bookId}/llibre/
                </a>.
            </p>
            {else}
            {gt text="l'adreça d'accés a aquest llibre serà"}:
            <p>
                <b>{$bookSoftwareUrl}/{$book.schoolCode}_{$book.bookId}/llibre/</b>.
            </p>
            {/if}
        </div>
        <div><p>{gt text="Podràs accedir a l'administració del llibre amb el teu nom d'usuari/ària i la contrasenya de la XTEC."}</p></div>
    </div>
    <hr />
    {/foreach}
    <br />
    <div>
        {gt text="Si tens dubtes de com editar i afegir continguts nous als teus llibre, pots visitar el llibre d'ajuda."}
    </div>
    <div>
        {gt text='Si vols preguntar dubtes o fer comentaris sobre el funcionament dels llibres, pots dirigir-te als fòrums de la XTEC. '}
    </div>
    <div>
        {gt text="Esperem que gaudeixis d'aquest servei."}
    </div>
</div>