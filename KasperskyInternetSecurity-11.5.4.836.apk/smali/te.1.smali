.class public abstract Lte;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# instance fields
.field protected b:Ltf;

.field protected c:Ltd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "1335"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lte;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Ltf;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lte;->b:Ltf;

    .line 27
    return-void
.end method
