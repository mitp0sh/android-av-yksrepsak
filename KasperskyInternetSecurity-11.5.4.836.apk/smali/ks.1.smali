.class final Lks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbA;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lks;->a:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lks;->b:Landroid/content/Context;

    .line 59
    const v0, 0x7f060014

    iput v0, p0, Lks;->a:I

    .line 60
    iput-object p1, p0, Lks;->b:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lks;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lks;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
