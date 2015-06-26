.class final LuG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbY;


# instance fields
.field private synthetic a:Luz;


# direct methods
.method private constructor <init>(Luz;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, LuG;->a:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luz;B)V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0, p1}, LuG;-><init>(Luz;)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    .prologue
    .line 732
    const-string v0, "menu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Menu slided: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    if-eqz p2, :cond_0

    .line 740
    :goto_0
    iget-object v0, p0, LuG;->a:Luz;

    invoke-static {v0, p1}, Luz;->a(Luz;I)V

    .line 741
    return-void

    .line 738
    :cond_0
    rsub-int/lit8 p1, p1, 0x64

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, LuG;->a:Luz;

    invoke-static {v0, p1}, Luz;->a(Luz;Z)V

    .line 723
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, LuG;->a:Luz;

    invoke-static {v0, p1}, Luz;->b(Luz;Z)V

    .line 728
    return-void
.end method
