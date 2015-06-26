.class final Lvh;
.super Lni;
.source "SourceFile"

# interfaces
.implements Lvk;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    const-class v1, Lvh;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lni;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 16
    return-void
.end method

.method private a(Lvg;)V
    .locals 2

    .prologue
    .line 39
    sget-object v1, Lvj;->a:[I

    invoke-virtual {p1}, Lvg;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p1}, Lvg;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static i()Lvh;
    .locals 4

    .prologue
    .line 19
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PPItemsStorage;->itemsInStorage()I

    move-result v1

    .line 23
    const v2, 0x7f07008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v2, Lvh;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lvh;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v2
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lvg;

    invoke-direct {p0, p1}, Lvh;->a(Lvg;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lvi;

    invoke-direct {v0, p0}, Lvi;-><init>(Lvh;)V

    return-object v0
.end method
