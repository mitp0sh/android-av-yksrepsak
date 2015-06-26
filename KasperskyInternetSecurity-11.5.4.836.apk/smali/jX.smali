.class public final LjX;
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
    .line 256
    iput-object p1, p0, LjX;->a:Lcom/kms/KisShieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/KisShieldFragment;B)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, LjX;-><init>(Lcom/kms/KisShieldFragment;)V

    return-void
.end method

.method private a(Lpu;)V
    .locals 2

    .prologue
    .line 260
    sget-object v1, LjV;->e:[I

    invoke-virtual {p1}, Lpu;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, LjX;->a:Lcom/kms/KisShieldFragment;

    invoke-static {v0}, Lcom/kms/KisShieldFragment;->b(Lcom/kms/KisShieldFragment;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, Lpu;

    invoke-direct {p0, p1}, LjX;->a(Lpu;)V

    return-void
.end method
