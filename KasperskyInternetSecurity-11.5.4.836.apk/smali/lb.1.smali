.class public final Llb;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kms/antispam/AntispamEventType;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/kms/antispam/AntispamEventType;->ModeChanged:Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {p0, v0}, Llb;->a(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Llb;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kms/antispam/AntispamEventType;->WhiteListChanged:Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {p0, v0}, Llb;->a(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Llb;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kms/antispam/AntispamEventType;->BlackListChanged:Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {p0, v0}, Llb;->a(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Llb;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
