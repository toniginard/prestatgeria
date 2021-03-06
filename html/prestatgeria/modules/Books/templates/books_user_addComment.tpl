{include file="books_user_menu.tpl"}
<div class="page">
    <div class="mainTitle">
        {gt text='Envia un comentari al llibre'}: {$bookInfo.bookTitle}
    </div>
    <hr />
    {gt text="Des d'aquest espai pots enviar comentaris sobre els llibres."}
    <br /><br />
    <form method="post" name="sendC" id="sendComment" enctype="application/x-www-form-urlencoded">
        <div class="form">
            <input type="hidden" name="bookId" value="{$bookInfo.bookId}" />
            <input type="hidden" name="history" value="{$history}" />
            <label for="ccentre">{gt text='Text del comentari'}:</label><br />
            <textarea name="commentText" cols="50" rows="6" class="required"></textarea>
        </div>
        <div class="submit">	
            <input type="button" id="submit" onclick="sendComment()" value="{gt text='Envia'}" />
            {if $history == 2}
            <input type="button" name="fesn" id="fesn" value="{gt text='Cancel·la'}" onClick="catalogue('','','','',2)" />
            {else}
            <input type="button" name="fesn" id="fesn" value="{gt text='Cancel·la'}" onClick="showBookData({$bookInfo.bookId})" />
            {/if}
        </div>
    </form>
    {if $comments|@count gt 0}
    <div class="page">
        <div class="mainTitle">{gt text='Comentaris'}:</div>
        <hr />
        {section name=comments loop=$comments}
        <div class="bookCommentUserName">{$comments[comments].userName}</div>
        <div class="bookCommentDateTime">&nbsp;({$comments[comments].dateDay}-{$comments[comments].dateTime})</div>
        <div class="bookComment">{$comments[comments].text|nl2br}</div>
        <div>&nbsp;</div>
        {/section}
    </div>
    {/if}
</div>