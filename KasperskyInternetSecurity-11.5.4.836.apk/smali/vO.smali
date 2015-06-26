.class abstract LvO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwa;


# instance fields
.field private final a:Lwd;

.field private final b:Ljava/lang/Class;

.field private final c:I


# direct methods
.method protected constructor <init>(Lwd;Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, LvO;->a:Lwd;

    .line 28
    iput-object p2, p0, LvO;->b:Ljava/lang/Class;

    .line 29
    iput p3, p0, LvO;->c:I

    .line 30
    return-void
.end method

.method static synthetic a(LvO;)Lwd;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, LvO;->a:Lwd;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LvO;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, LvO;->c:I

    return v0
.end method

.method protected final c()Lwd;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LvO;->a:Lwd;

    return-object v0
.end method

.method public final d()LsF;
    .locals 2

    .prologue
    .line 48
    new-instance v0, LvP;

    iget-object v1, p0, LvO;->b:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, LvP;-><init>(LvO;Ljava/lang/Class;)V

    return-object v0
.end method
