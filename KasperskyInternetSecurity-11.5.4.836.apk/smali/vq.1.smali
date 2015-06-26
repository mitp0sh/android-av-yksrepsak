.class public final Lvq;
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
    .line 440
    iput-object p1, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lvq;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 449
    packed-switch p2, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 453
    :pswitch_0
    iget-object v0, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    iget-object v1, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->removeContact(I)V

    .line 459
    iget-object v0, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    iget-object v1, p0, Lvq;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
