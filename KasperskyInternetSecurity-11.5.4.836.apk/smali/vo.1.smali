.class public final Lvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PPContactsActivity;


# direct methods
.method private constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lvo;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 420
    packed-switch p2, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 423
    :pswitch_0
    iget-object v0, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->h(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    iget-object v0, v0, Lqr;->e:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->updatePhone(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lvo;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
