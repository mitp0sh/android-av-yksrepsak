.class public final Lhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgF;


# instance fields
.field private final a:LgF;

.field private b:Z


# direct methods
.method public constructor <init>(LgF;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lhm;->a:LgF;

    .line 506
    return-void
.end method


# virtual methods
.method public final a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 515
    iget-object v0, p0, Lhm;->a:LgF;

    invoke-interface {v0, p1, p2, p3, p4}, LgF;->a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I

    move-result v0

    .line 516
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 518
    :cond_0
    iput-boolean v2, p0, Lhm;->b:Z

    .line 520
    :cond_1
    return v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lhm;->b:Z

    return v0
.end method
