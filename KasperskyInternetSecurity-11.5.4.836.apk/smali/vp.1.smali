.class public final Lvp;
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
    .line 389
    iput-object p1, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lvp;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 394
    packed-switch p2, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    iget-object v1, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v1, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Lcom/kms/privacyprotection/gui/PPContactsActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kms/privacyprotection/PPItemsStorage;->addPhone(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->o(Z)V

    .line 403
    iget-object v0, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lvp;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
