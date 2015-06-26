.class final LuY;
.super LbK;
.source "SourceFile"

# interfaces
.implements Lvk;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, LuY;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LuY;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3

    .prologue
    .line 22
    sget-object v0, LuY;->a:Ljava/lang/String;

    new-instance v1, Lvd;

    invoke-static {}, LuY;->l()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lvd;-><init>(ZZ)V

    const v2, 0x7f030041

    invoke-direct {p0, v0, v1, v2}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 23
    return-void
.end method

.method private a(Lvd;LbX;)V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f0b00be

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v0, 0x7f0b00bd

    invoke-virtual {p2, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/Switch;

    .line 60
    invoke-static {p1}, Lvd;->a(Lvd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setChecked(Z)V

    .line 61
    invoke-static {p1}, Lvd;->b(Lvd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setEnabled(Z)V

    .line 62
    new-instance v1, Lva;

    invoke-direct {v1, p0}, Lva;-><init>(LuY;)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    new-instance v1, Lvb;

    invoke-direct {v1, p0}, Lvb;-><init>(LuY;)V

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private a(Lvg;)V
    .locals 2

    .prologue
    .line 78
    sget-object v1, Lvc;->a:[I

    invoke-virtual {p1}, Lvg;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-static {}, LuY;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, LuY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd;

    invoke-static {v0}, Lvd;->c(Lvd;)Lvd;

    move-result-object v0

    invoke-virtual {p0, v0}, LuY;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, LuY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd;

    invoke-static {v0}, Lvd;->d(Lvd;)Lvd;

    move-result-object v0

    invoke-virtual {p0, v0}, LuY;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, LuY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd;

    invoke-static {v0}, Lvd;->e(Lvd;)Lvd;

    move-result-object v0

    invoke-virtual {p0, v0}, LuY;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, LuY;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvd;

    invoke-static {v0}, Lvd;->f(Lvd;)Lvd;

    move-result-object v0

    invoke-virtual {p0, v0}, LuY;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static i()LuY;
    .locals 2

    .prologue
    .line 26
    new-instance v0, LuY;

    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v1

    invoke-virtual {v1}, Lsm;->b()Z

    move-result v1

    invoke-direct {v0, v1}, LuY;-><init>(Z)V

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method

.method private static k()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method

.method private static l()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, LuY;->k()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, LuY;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lvd;

    invoke-direct {p0, p1, p3}, LuY;->a(Lvd;LbX;)V

    return-void
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lvg;

    invoke-direct {p0, p1}, LuY;->a(Lvg;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 31
    new-instance v0, LuZ;

    invoke-direct {v0, p0}, LuZ;-><init>(LuY;)V

    return-object v0
.end method

.method public final h()LbR;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
