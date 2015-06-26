.class public final LrC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/app/Activity;

.field private final c:Lrz;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lrz;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LrC;->b:Landroid/app/Activity;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, LrC;->a:Landroid/support/v4/app/Fragment;

    .line 28
    iput-object p2, p0, LrC;->c:Lrz;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;Lrz;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, LrC;->b:Landroid/app/Activity;

    .line 21
    iput-object p1, p0, LrC;->a:Landroid/support/v4/app/Fragment;

    .line 22
    iput-object p2, p0, LrC;->c:Lrz;

    .line 23
    return-void
.end method

.method public static a(Landroid/app/Activity;Lrz;)LrC;
    .locals 1

    .prologue
    .line 33
    new-instance v0, LrC;

    invoke-direct {v0, p0, p1}, LrC;-><init>(Landroid/app/Activity;Lrz;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lrz;)LrC;
    .locals 1

    .prologue
    .line 38
    new-instance v0, LrC;

    invoke-direct {v0, p0, p1}, LrC;-><init>(Landroid/support/v4/app/Fragment;Lrz;)V

    return-object v0
.end method

.method static synthetic a(LrC;)Lrz;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, LrC;->c:Lrz;

    return-object v0
.end method


# virtual methods
.method public final a(Lrw;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, LrD;

    invoke-direct {v0, p0, p1}, LrD;-><init>(LrC;Lrw;)V

    .line 50
    iget-object v1, p0, LrC;->a:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, LrC;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, LsG;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, LrC;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, LsG;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
