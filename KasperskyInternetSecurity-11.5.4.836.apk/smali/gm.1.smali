.class public final Lgm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/webkit/WebView;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lgm;->a:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lgm;->b:Ljava/lang/String;

    .line 163
    iput-boolean p3, p0, Lgm;->c:Z

    .line 164
    iput-boolean p4, p0, Lgm;->e:Z

    .line 165
    return-void
.end method

.method static synthetic a(Lgm;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lgm;->d:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lgm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgm;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lgm;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lgm;Z)Z
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lgm;->c:Z

    return p1
.end method

.method static synthetic b(Lgm;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgm;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lgm;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lgm;->c:Z

    return v0
.end method

.method static synthetic d(Lgm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgm;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lgm;->e:Z

    return v0
.end method
