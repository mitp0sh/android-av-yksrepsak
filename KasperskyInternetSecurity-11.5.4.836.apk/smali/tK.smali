.class public final LtK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LtU;


# instance fields
.field private final a:Lgp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lkr;->a()Lgp;

    move-result-object v0

    iput-object v0, p0, LtK;->a:Lgp;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "[{INAPP_PURCHASE_DATA= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",INAPP_DATA_SIGNATURE={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lum;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 43
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    const-string v3, "licensing.gplay_activation_code_url"

    invoke-interface {v2, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v3, p0, LtK;->a:Lgp;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lgp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    iget-object v0, p0, LtK;->a:Lgp;

    invoke-virtual {v0}, Lgp;->a()I

    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, LtK;->a:Lgp;

    invoke-virtual {v0}, Lgp;->b()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v2, "ERROR: No JSON data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ERROR: Signature not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ERROR: Signature incorrect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Empty order array or no buy orders found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
