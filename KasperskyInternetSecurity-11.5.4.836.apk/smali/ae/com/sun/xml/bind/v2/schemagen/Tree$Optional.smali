.class final Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;
.super Lae/com/sun/xml/bind/v2/schemagen/Tree;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Optional"
.end annotation


# instance fields
.field private final body:Lae/com/sun/xml/bind/v2/schemagen/Tree;


# direct methods
.method private constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/Tree;)V
    .locals 0
    .param p1, "body"    # Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .prologue
    .line 170
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/schemagen/Tree;-><init>()V

    .line 171
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;->body:Lae/com/sun/xml/bind/v2/schemagen/Tree;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/Tree;Lae/com/sun/xml/bind/v2/schemagen/Tree$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/schemagen/Tree$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;-><init>(Lae/com/sun/xml/bind/v2/schemagen/Tree;)V

    return-void
.end method


# virtual methods
.method isNullable()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method makeOptional(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 0
    .param p1, "really"    # Z

    .prologue
    .line 181
    return-object p0
.end method

.method protected write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V
    .locals 2
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;
    .param p2, "isOptional"    # Z
    .param p3, "repeated"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/Tree$Optional;->body:Lae/com/sun/xml/bind/v2/schemagen/Tree;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ContentModelContainer;ZZ)V

    .line 187
    return-void
.end method
