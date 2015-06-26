.class public final LjW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lcom/kms/KisShieldFragment;


# direct methods
.method private constructor <init>(Lcom/kms/KisShieldFragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, LjW;->a:Lcom/kms/KisShieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/KisShieldFragment;B)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, LjW;-><init>(Lcom/kms/KisShieldFragment;)V

    return-void
.end method

.method private a(Lme;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    sget-object v1, LjV;->d:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, LjW;->a:Lcom/kms/KisShieldFragment;

    invoke-virtual {p1}, Lme;->e()Lmn;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/kms/KisShieldFragment;->a(Lcom/kms/KisShieldFragment;Lmn;Z)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, LjW;->a:Lcom/kms/KisShieldFragment;

    invoke-virtual {p1}, Lme;->i()Lmo;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/kms/KisShieldFragment;->a(Lcom/kms/KisShieldFragment;Lmo;Z)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Lme;

    invoke-direct {p0, p1}, LjW;->a(Lme;)V

    return-void
.end method
