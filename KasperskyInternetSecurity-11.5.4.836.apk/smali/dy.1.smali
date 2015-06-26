.class public final Ldy;
.super LdY;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ldy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldj;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {p0, v0, p2}, LdY;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ldj;)V

    .line 33
    iput-object p1, p0, Ldy;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Ldy;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Ldy;->i()V

    return-void
.end method

.method static synthetic a(Ldy;I)V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ldy;->a(I)V

    return-void
.end method

.method static synthetic b(Ldy;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Ldy;->i()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, LdA;

    iget-object v1, p0, Ldy;->b:Landroid/content/Context;

    new-instance v2, Ldz;

    invoke-direct {v2, p0}, Ldz;-><init>(Ldy;)V

    new-instance v3, LdG;

    invoke-direct {v3}, LdG;-><init>()V

    invoke-direct {v0, v1, v2, v3}, LdA;-><init>(Landroid/content/Context;Lo;LdI;)V

    invoke-virtual {v0}, LdA;->a()V

    .line 49
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    invoke-interface {v0}, Lde;->b()Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ldy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
