.class public final LpP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LpP;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, LpP;

    invoke-direct {v0}, LpP;-><init>()V

    .line 15
    sput-object v0, LpP;->a:LpP;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, LpP;->a(Lrx;)V

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()LpP;
    .locals 1

    .prologue
    .line 25
    sget-object v0, LpP;->a:LpP;

    return-object v0
.end method

.method private a(Lrx;)V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lkk;

    new-instance v1, LpR;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LpR;-><init>(LpP;B)V

    invoke-interface {p1, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, LpP;->b:Z

    .line 38
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, LpP;->b:Z

    return v0
.end method
