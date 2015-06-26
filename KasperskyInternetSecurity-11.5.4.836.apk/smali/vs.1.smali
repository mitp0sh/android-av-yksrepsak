.class public final Lvs;
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
    .line 369
    iput-object p1, p0, Lvs;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lvs;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 376
    packed-switch p2, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 379
    :pswitch_0
    invoke-static {}, LuR;->a()LuR;

    move-result-object v0

    iget-object v1, p0, Lvs;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, LuR;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lvs;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
