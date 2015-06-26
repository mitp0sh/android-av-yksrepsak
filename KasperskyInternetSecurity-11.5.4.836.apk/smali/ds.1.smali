.class public final Lds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lds;->a:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lds;->b:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lds;->c:Ljava/lang/String;

    .line 226
    iput p4, p0, Lds;->d:I

    .line 227
    return-void
.end method

.method public static synthetic a(Lds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lds;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lds;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lds;->c:Ljava/lang/String;

    return-object v0
.end method
